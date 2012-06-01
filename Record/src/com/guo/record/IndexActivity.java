package com.guo.record;
import java.util.ArrayList;
import java.util.HashMap;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.SimpleAdapter;
import android.widget.Toast;

public class IndexActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.index);

		GridView gridview = (GridView) findViewById(R.id.GridView);
		ArrayList<HashMap<String, Object>> meumList = new ArrayList<HashMap<String, Object>>();

		for (int i = 1; i < 6; i++) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			if(i==1){
				//��¼
				map.put("ItemImage", R.drawable.record);
				map.put("ItemText", "��¼");
			}else if(2==i){
				//�б�
				map.put("ItemImage", R.drawable.admin);
				map.put("ItemText", "�б�");
			}else if(5==i){
				//�б�
				map.put("ItemImage", R.drawable.logout);
				map.put("ItemText", "�˳�");
			}else if(3==i){
				//Ĭ��
				map.put("ItemImage", R.drawable.icon);
				map.put("ItemText", "web view");
			}else {
				map.put("ItemImage", R.drawable.icon);
				map.put("ItemText", "���");
			}
			
			meumList.add(map);
		}

		SimpleAdapter saMenuItem = new SimpleAdapter(this, meumList, // ����Դ
				R.layout.menuitem, // xmlʵ��
				new String[] { "ItemImage", "ItemText" }, // ��Ӧmap��Key
				new int[] { R.id.ItemImage, R.id.ItemText }); // ��ӦR��Id

		// ���Item��������
		gridview.setAdapter(saMenuItem);
		gridview.setOnItemClickListener(new OnItemClickListener() {
			public void onItemClick(AdapterView<?> arg0, View arg1, int arg2,
					long arg3) {
			
				jumpPoint(arg2);
			}
		});

	}
	
	/**
	 * ���й��ܵ����ת
	 * @param arg2
	 */
	public void jumpPoint( int menuId){
		//System.out.println("click index:" + arg2);
		//��ת
		if(0==menuId){
			doGoToRecord();
		}else if(1==menuId){
			doGoToList();
		}else if(2==menuId){
			//����һ��intent���󣬱���������activity֮�����ת
	    	Intent intent = new Intent(this, WebViewActivity.class);
	    	//��ת
			this.startActivity(intent);
		}else if(3==menuId){
			//����һ��intent���󣬱���������activity֮�����ת
	    	Intent intent = new Intent(this, CameraActivity.class);
	    	//��ת
			this.startActivity(intent);
		}else if(4==menuId){
		
			logout();
		}else{
//			AlertDialog dialog=new AlertDialog.Builder(this).setPositiveButton("��δ����,�����ڴ�!", null)
//			.create();
//			dialog.show();
			
			Toast.makeText(this, "��δ����,�����ڴ�!",  
					                   Toast.LENGTH_LONG).show();  

		}
	}
	
	
    /**
     * ��ת���б�ҳ��
     */
    private void doGoToList(){
    	//����һ��intent���󣬱���������activity֮�����ת
    	Intent intent = new Intent(this, RecordListActivity.class);
    	//����,����HashMap�Ľṹ
    	intent.putExtra("A_name", this.getClass().toString());
    	//��ת
		this.startActivity(intent);
    }
    
    
    
    /**
     * ��ת��¼��ҳ��
     */
    private void doGoToRecord(){
    	//����һ��intent���󣬱���������activity֮�����ת
    	Intent intent = new Intent(this, RecordActivity.class);
    	//��ת
		this.startActivity(intent);
    }
    
    /**
     * �˳�����Ĳ���
     */
    private void logout(){
    	Builder builder=new AlertDialog.Builder(this);
    	builder.setTitle("��ʾ");
    	builder.setMessage("�Ƿ��˳�ϵͳ");
    	builder.setPositiveButton("ȷ��",  new OnClickListener(){
    		@Override
			public void onClick(DialogInterface dialog, int which){
    			android.os.Process.killProcess(android.os.Process.myPid());
			}
    	});
    	builder.setNegativeButton("ȡ��", null);
    	builder.create().show();
    }
    

}
