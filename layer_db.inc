<?php 

function get_avatars_list($av_id) {
  //сейчас просто выбираем всех пользователей типа 2 (хулиганы?). Надо будет:
  //- убрать умолчальный фильтр 2
  //- добавить учет внешних фильтров - имя, локация
  //- добавить тайных пользователей, которые ему писали
  $result = array_from_query("select av_id, av_name, strength from avatars");// where av_id<>'.$av_id.' and sign_sign_id=2');
  
  return $result;
}

 //вывод данных по пользователю - показывается всегда
 function get_avatar_desc($av_id) {
   $result = array_from_query("select av.av_id, av.av_login, av.av_name, av.strength, si.sign_name, si.sign_alter_name from avatars av, signs si where av.sign_sign_id=si.sign_id and av.av_id=$av_id");
   return $result;
 }//get_avatar_desc


 function get_items_list($oper_av_id, $owner_av_id) {
  //- если оператор не владелец, то не показываем описание
  $result = array_from_query("select it.it_id, it.it_name, it.special_feature from items it, item_avatar_history ih where ih.end_date is null and it.it_id=ih.it_it_id and ih.av_av_id=$owner_av_id order by ih.start_date desc");
  
  return $result;
}


function get_messages_list($oper_av_id) {
  $q = "select frm, av_name, msg_text, opdate from "
                             ."(select 'me' as frm, a.av_name, m.msg_text, m.opdate from messages m, avatars a where a.av_id=m.my_av_id and my_av_id=$oper_av_id"
                             ." union "
                             ."select 'him' as frm, a.av_name, m.msg_text, m.opdate from messages m, avatars a where a.av_id=m.my_av_id and m.his_av_id=$oper_av_id"
                             .") q order by q.opdate desc";
  $result = array_from_query($q);
  return $result;
}
  
?>
