package com.guo.record;

import java.util.ArrayList;
import java.util.HashMap;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.SimpleAdapter;

public class IndexActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.index);

		GridView gridview = (GridView) findViewById(R.id.GridView);
		ArrayList<HashMap<String, Object>> meumList = new ArrayList<HashMap<String, Object>>();

		for (int i = 1; i < 4; i++) {
			HashMap<String, Object> map = new HashMap<String, Object>();
			if(i==1){
				//��¼
				map.put("ItemImage", R.drawable.record);
				map.put("ItemText", "��¼");
			}else if(2==i){
				//�б�
				map.put("ItemImage", R.drawable.admin);
				map.put("ItemText", "�б�");
			}else{
				//Ĭ��
				map.put("ItemImage", R.drawable.icon);
				map.put("ItemText", "����");
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
		}else{
			AlertDialog dialog=new AlertDialog.Builder(this).setPositiveButton("��δ����,�����ڴ�!", null)
			.create();
			dialog.show();
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
    

}
