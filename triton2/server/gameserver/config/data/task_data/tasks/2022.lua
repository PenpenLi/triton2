task = {
  id = 2022,    --����ID
  kind = 3,    --��������
  color = 2,    --������ɫ
  name = "#td_2022_name",  
  desc = "#td_2022_desc",  
  dest = "#td_2022_dest",  
  section = "#td_2022_section",  
  give_npc = 7346,    --����NPC
  give_map_id = 62,    --����NPC���ڵĵ�ͼID
  recv_npc = 7346,    --����NPC
  recv_map_id = 62,    --����NPC���ڵĵ�ͼID
  hard = 0,    --�����Ѷ�
  timer = 0,    --����ʱ��(��)
  cancelable = 1,    --�����ܷ񱻷���
  repeatable = 0,    --����ɹ���ɷ�����
  retryable = 1,    --����ʧ�ܺ�ɷ�����
  fail_on_killed = 0,    --��ұ�ɱ�����Ƿ���Ϊ����ʧ��
  after_task = 2023,    --��������(�Զ�����)
  direct_complete = 0,    --�����Ƿ�ֱ�����(������NPC��)
  get_metier_task = 0,    --�Ƿ���ְ����
  task_level = 40,    --������Ӧ��ҵȼ�
  send_npc_id = 0,    --Ҫ���͵�NPC
  max_gird = 0,    --����뻤��NPC����������
  is_open_npc = 0,    --�Ƿ��ڽ�����ʱ���ֺ�NPC����(����������)
  is_fetch = 0,    --�Ƿ�������(Ĭ�Ϸ�)
  task_type = 2,    --��������
  task_hard = 7,    --�������ͼ��Ѷ�
  trace={ 
	"#td_2022_trace1",
  }; 
  max_send_time = 0,    --����뿪����NPC���ʱ��(��)
  offline_fail = 0,    --�Ƿ�������������ʧ��
  group_id = 0,    --���������
  is_fail_auto_abort = 0,    --�Ƿ�ʧ��ʱ�Զ�����
  is_share_complete = 0,    --ͬ������Ƿ��������ɹ�
  task_map_id = 63,    --���������ĵ�ͼID
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
  drop_items = {{npc_id=44911 ,item_id=35999 ,n=1 ,p=5000, mapid=5},{npc_id=44912 ,item_id=35999 ,n=1 ,p=5000, mapid=5}};   --�������
  --����������
  accept_cond = 
  {
	{func=check_level, args={min_level = 40,max_level = 200}},
	{func=check_before_task, args={task_id = 2021}},
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
	{func=check_items_of_bag, args={id = 35999,n = 10}},
  };
  --������ɽ���
  awards = 
  {
	{func=award_expr, args={expr = 46000}},
	{func=award_money, args={money = 7000}},
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
	npc_talk ="#td_2022_dialog_accept_npctalk_1",
	buttons = {
        { player_talk = "#td_2022_dialog_accept_player_talk_1_1" ,dest_type = 1 ,dest_window_id = 229 ,func_code = 0},

	  }
	},
	[229] = {
	parent_id = 1,
	window_type = 1,
	npc_talk ="#td_2022_dialog_accept_npctalk_229",
	buttons = {
        { player_talk = "#td_2022_dialog_accept_player_talk_229_1" ,dest_type = 1 ,dest_window_id = 230 ,func_code = 0},

	  }
	},
	[230] = {
	parent_id = 229,
	window_type = 3,
	npc_talk ="#td_2022_dialog_accept_npctalk_230",
	buttons = {
        { player_talk = "#td_2022_dialog_accept_player_talk_230_1" ,dest_type = 2 ,dest_window_id = 0 ,func_code = 3},

	  }
	},
  --������жԻ�
	[2] = {
	parent_id = 0,
	window_type = 1,
	npc_talk ="#td_2022_dialog_doing_npctalk_2",
	buttons = {

  }
},
  --�������Ի�
	[3] = {
	parent_id = 0,
	window_type = 1,
	npc_talk ="#td_2022_dialog_end_npctalk_3",
	buttons = {
        { player_talk = "#td_2022_dialog_end_player_talk_3_1" ,dest_type = 1 ,dest_window_id = 231 ,func_code = 0},

  }
},
	[231] = {
	parent_id = 3,
	window_type = 2,
	npc_talk ="#td_2022_dialog_end_npctalk_231",
	buttons = {
        { player_talk = "#td_2022_dialog_end_player_talk_231_1" ,dest_type = 2 ,dest_window_id = 0 ,func_code = 4},

  }
},
};
  --�Ի�NPC
  dialog_with_npc = {
};
}