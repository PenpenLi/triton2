task = {
  id = 10107,    --����ID
  kind = 0,    --��������
  color = 0,    --������ɫ
  name = "#td_10107_name",  
  desc = "#td_10107_desc",  
  dest = "#td_10107_dest",  
  section = "#td_10107_section",  
  give_npc = 65280,    --����NPC
  give_map_id = 106,    --����NPC���ڵĵ�ͼID
  recv_npc = 65280,    --����NPC
  recv_map_id = 106,    --����NPC���ڵĵ�ͼID
  hard = 0,    --�����Ѷ�
  timer = 0,    --����ʱ��(��)
  cancelable = 1,    --�����ܷ񱻷���
  repeatable = 0,    --����ɹ���ɷ�����
  retryable = 1,    --����ʧ�ܺ�ɷ�����
  fail_on_killed = 0,    --��ұ�ɱ�����Ƿ���Ϊ����ʧ��
  after_task = 10108,    --��������(�Զ�����)
  direct_complete = 0,    --�����Ƿ�ֱ�����(������NPC��)
  get_metier_task = 0,    --�Ƿ���ְ����
  task_level = 107,    --������Ӧ��ҵȼ�
  send_npc_id = 0,    --Ҫ���͵�NPC
  max_gird = 0,    --����뻤��NPC����������
  is_open_npc = 0,    --�Ƿ��ڽ�����ʱ���ֺ�NPC����(����������)
  is_fetch = 0,    --�Ƿ�������(Ĭ�Ϸ�)
  task_type = 1,    --��������
  task_hard = 8,    --�������ͼ��Ѷ�
  trace={ 
	"#td_10107_trace1",
  }; 
  max_send_time = 0,    --����뿪����NPC���ʱ��(��)
  offline_fail = 0,    --�Ƿ�������������ʧ��
  group_id = 0,    --���������
  is_fail_auto_abort = 0,    --�Ƿ�ʧ��ʱ�Զ�����
  is_share_complete = 0,    --ͬ������Ƿ��������ɹ�
  task_map_id = 106,    --���������ĵ�ͼID
  can_invite = 0,    --�Ƿ��������
  timeout_action = 0,    --��ʱ����ʱ�������״̬
  time_lmt_type = 0,    --��ʱ��������
  is_redirect_fail = 0,    --�Ƿ���ͼ����ʧ��
  is_day_clear = 0,    --�Ƿ�ÿ�������ɼ�¼
  give_camp = 0,    --����NPC��Ӫ
  recv_camp = 0,    --����NPC��Ӫ
  is_day_fail = 0,    --�Ƿ����ʧ��
  loop_type = 0,    --����������
  team_member_lmt = 0,    --Ҫ���������
  finish_delay_time = 0,    --�����Ҫ����ò��ܽ������룩
  refresh_award_able = 0,    --�����Ƿ����ˢ�½���
  task_reaccept_time = 0,    --������ɺ��ÿ����ٽ���ͬ�����룩
  publish_type = 0,    --������������
  give_items = {};   --���ŵ���
  --����NPC·��
  npc_waypoints = {};
  drop_items = {{npc_id=65413 ,item_id=68389 ,n=1 ,p=1000, mapid=106},{npc_id=65414 ,item_id=68389 ,n=1 ,p=1000, mapid=106}};   --�������
  --����������
  accept_cond = 
  {
	{func=check_before_task, args={task_id = 10106}},
  };
  --������������
  publish_cond = 
  {
  };
  --������ʾ����
  show_cond = 
  {
  };
  --�������
  complete_cond = 
  {
	{func=check_items_of_bag, args={id = 68389,n = 10}},
  };
  --������ɽ���
  awards = 
  {
	{func=award_expr, args={expr = 0}},
	{func=award_money, args={money = 0,is_free = 0}},
	{func=award_telant, args={money = 0}},
};
  --����������
  accept_awards = 
  {
};
  --�Ի�
  dialog =   {
  --������Ի�
	[1] = {
	parent_id = 0,
	window_type = 1,
	npc_talk ="#td_10107_dialog_accept_npctalk_1",
	buttons = {
        { player_talk = "#td_10107_dialog_accept_player_talk_1_1" ,dest_type = 1 ,dest_window_id = 4 ,func_code = 0},

	  }
	},
	[4] = {
	parent_id = 1,
	window_type = 1,
	npc_talk ="#td_10107_dialog_accept_npctalk_4",
	buttons = {
        { player_talk = "#td_10107_dialog_accept_player_talk_4_1" ,dest_type = 1 ,dest_window_id = 5 ,func_code = 0},

	  }
	},
	[5] = {
	parent_id = 4,
	window_type = 1,
	npc_talk ="#td_10107_dialog_accept_npctalk_5",
	buttons = {
        { player_talk = "#td_10107_dialog_accept_player_talk_5_1" ,dest_type = 1 ,dest_window_id = 7 ,func_code = 0},

	  }
	},
	[7] = {
	parent_id = 5,
	window_type = 1,
	npc_talk ="#td_10107_dialog_accept_npctalk_7",
	buttons = {
        { player_talk = "#td_10107_dialog_accept_player_talk_7_1" ,dest_type = 1 ,dest_window_id = 8 ,func_code = 0},

	  }
	},
	[8] = {
	parent_id = 7,
	window_type = 3,
	npc_talk ="#td_10107_dialog_accept_npctalk_8",
	buttons = {

	  }
	},
  --������жԻ�
	[2] = {
	parent_id = 0,
	window_type = 1,
	npc_talk ="#td_10107_dialog_doing_npctalk_2",
	buttons = {

  }
},
  --�������Ի�
	[3] = {
	parent_id = 0,
	window_type = 1,
	npc_talk ="#td_10107_dialog_end_npctalk_3",
	buttons = {
        { player_talk = "#td_10107_dialog_end_player_talk_3_1" ,dest_type = 1 ,dest_window_id = 9 ,func_code = 0},

  }
},
	[9] = {
	parent_id = 3,
	window_type = 2,
	npc_talk ="#td_10107_dialog_end_npctalk_9",
	buttons = {

  }
},
};
  --�Ի�NPC
  dialog_with_npc = {
};
}