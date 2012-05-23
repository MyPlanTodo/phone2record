package com.guo.record;

import java.util.Vector;

import android.app.Activity;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;

import com.guo.adapter.MyAdapter;
import com.guo.db.DatabaseHelper;
import com.guo.model.RecordModel;
import com.guo.util.StringUtil;

public class RecordListActivity extends Activity {
	
	
		EditText etSearch;
		ListView ltView;
		Button btnRecorderSearch;
	
	   @Override
		public void onCreate(Bundle savedInstanceState) {
			super.onCreate(savedInstanceState);
			setContentView(R.layout.info_list);
			
			etSearch=(EditText)this.findViewById(R.id.tips);
			//TODO������ݿ��е���Ϣ������չʾ����
			ltView=(ListView)this.findViewById(R.id.lt_info_list);
			ltView.setBackgroundColor(Color.BLUE);
			//gdView.setAdapter(null);
			
			btnRecorderSearch=(Button)this.findViewById(R.id.btnRecorderSearch);
		
			btnRecorderSearch.setOnClickListener(new Button.OnClickListener(){
				public void onClick(View v){
					//dialog.setMessage("�����б�ҳ�棡");
					//dialog.show();
					doSearch();
				}
			});
			
			this.initDbListToControl(ltView,null);
			
	  }
	   
	   
	   /**
	    * �����ݿ��е���Ϣ��ѯ��������չʾ��������ȥ
	    */
	   private void initDbListToControl(ListView ltView,String content){
		  
		   try {
			   
			   DatabaseHelper dbHelper= DatabaseHelper.getDatabaseHelper(this);
			   SQLiteDatabase db=dbHelper.getWritableDatabase();
			   
			    String[] columns=new String[2];
				columns[0]="_id";
				columns[1]="content";
				
				String selection=null;
				if(StringUtil.isNotEmpty(content)){
					selection="  content like  '%"+content+"%'";
				}
				
				// Cursor cs=db.rawQuery(" select * from test ", null);
				Cursor cs=db.query("test", columns, selection, null, null, null, " _id desc ");
				
				//��ȡ���ݿ��е�����
				Vector<RecordModel> mReord=new Vector<RecordModel>();
				while(cs.moveToNext()){
					RecordModel recordModel=new RecordModel();
					recordModel.setId(cs.getInt(0));
					recordModel.setContent(cs.getString(1));
					mReord.add(recordModel);
				}
				
				db.close();
				
				MyAdapter recorderAdapter=new MyAdapter(this);
				//���ݸ�ֵ
				recorderAdapter.setData(mReord);
				//������ʾ
				ltView.setAdapter(recorderAdapter);
				ltView.setBackgroundColor(Color.BLUE);
				ltView.setVisibility(BIND_AUTO_CREATE);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		   
		   
	   }
	   
	   /**
	    * ���в�ѯ
	    */
	   private void doSearch(){
		   String content =etSearch.getText().toString();
		   if(content!=null&&!"".equals(content)){
			   //���в�ѯ
			   initDbListToControl(this.ltView , content);
		   }
	   }
	   
	
	   
	   
	   
}
