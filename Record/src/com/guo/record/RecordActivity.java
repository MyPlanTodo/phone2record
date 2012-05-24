package com.guo.record;

import com.guo.db.DatabaseHelper;
import com.guo.util.StringUtil;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteQuery;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class RecordActivity extends Activity {
	
	private EditText etContent;
	private TextView etTitle;
	Button btnSaveInfo;
	Button btnCancel;
	AlertDialog dialog;
	
	
    @Override
	public void onCreate(Bundle savedInstanceState) {
		//��ʼ������,ָ����ʾ��������Ϊrecorder��xml�ļ�
    	super.onCreate(savedInstanceState);
		setContentView(R.layout.recorder);
		//ͨ��id�������
		etTitle=(EditText)this.findViewById(R.id.et_title);
		etTitle.setHint("�����뱸������");
		//����
		etContent = (EditText) this.findViewById(R.id.et_content);
		etContent.setHint("�����뱸������");
		//���水ť
		btnSaveInfo = (Button) this.findViewById(R.id.save_info);
		//ȡ��
		btnCancel=(Button)this.findViewById(R.id.btn_cancel);
		
		//��Ϣ������
		dialog = new AlertDialog.Builder(this).setPositiveButton("ȷ��", null)
				.create();

		
		etContent.setOnKeyListener(new EditText.OnKeyListener() {
			public boolean onKey(View v, int keyCode, KeyEvent event) {
				return false;
			}
		});

		//���涯��
		btnSaveInfo.setOnClickListener(new Button.OnClickListener() {
			public void onClick(View v) {
				//�ж��Ƿ�Ϊ��
				if (validate()) {
					if(createDb(etTitle.getText().toString(),etContent.getText().toString())){
						dialog.setMessage("����ɹ���");
						dialog.show();
						
						//������ת
						doGoToList();
					}else{
						dialog.setMessage("����ʧ�ܣ���������߼���");
						dialog.show();
					}
				}
			}
		});
		
		//��ת���б�ҳ��
		btnCancel.setOnClickListener(new Button.OnClickListener(){
			public void onClick(View v){
				doGoToIndex();
			}
		});
	}
    
    /**
     * ��ת���б�ҳ��
     */
    private void doGoToList(){
    	//����һ��intent���󣬱���������activity֮�����ת
    	Intent intent = new Intent(this,RecordListActivity.class);
    	//����,����HashMap�Ľṹ
    	//intent.putExtra("A_name", this.getClass().toString());
    	//��ת
		this.startActivity(intent);
    }
    
    
    /**
     * ��ת����ҳ�Ź���
     */
    private void doGoToIndex(){
    	//����һ��intent���󣬱���������activity֮�����ת
    	Intent intent = new Intent(this, IndexActivity.class);
    	//����,����HashMap�Ľṹ
    	intent.putExtra("A_name", this.getClass().toString());
    	//��ת
		this.startActivity(intent);
    }
    
    /**
     * �������ݵ�У��
     * @return
     */
	public boolean validate() {
		String title = etTitle.getText().toString();
		String content = etContent.getText().toString();
		System.out.println("content:"+content);
		if (StringUtil.isEmpty(title)) {
			dialog.setMessage("���ⲻ��Ϊ�գ�");
			dialog.show();
			return false;
		}
		
		if (StringUtil.isEmpty(content)) {
			dialog.setMessage("���ݲ���Ϊ�գ�");
			dialog.show();
			return false;
		}
		return true;
	}
	
	/**
	 * �������
	 * @param content
	 * @return
	 */
	public boolean createDb(String title,String content) {

		try {
			SQLiteDatabase myDataBase = this.openOrCreateDatabase(
					DatabaseHelper.DATABASE_NAME, MODE_PRIVATE, new CursorFactory() {
						// �����µ����ݿ⣬����myDatabase��ģʽMODE_PRIVATE����깤��
						// �����࣬һ����ѡ�����࣬����ѯʱ������ʵ����һ�����
						@Override
						public Cursor newCursor(SQLiteDatabase db,
								SQLiteCursorDriver masterQuery,
								String editTable, SQLiteQuery query) {
							return null;
						}
					});
			//�ж����ű���ڲ���
			 DatabaseHelper dbHelper= DatabaseHelper.getDatabaseHelper(this);
			 if(!dbHelper.tabbleIsExist("RECORD")){
				 	//������
					myDataBase.execSQL(" CREATE TABLE RECORD (id INTEGER PRIMARY KEY,title text,content text )  ; ");
			 }
			//��������
			myDataBase.execSQL(" INSERT INTO RECORD (title,content) values('"+title+"','"+content+"');");
			
			myDataBase.close();
			
			return true;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	
	
	
	
}