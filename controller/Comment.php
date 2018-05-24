<?php  
namespace controller;
use config\Database as DB;

class Comment extends DB
{
	public function addComment()
	{
		if (isset($_POST['submit'])) {
		    $data = array(
		        'post_id'  => $_POST['post_id'],
		        'username' => $_POST['username'],
		        'reply'    => $_POST['reply']
		    );
			header("location:index.php?detail=".$data['post_id']."&success#comment");
			return parent::saveComment($data['post_id'], $data['username'], $data['reply']);
		}
	}
	public function getComment($key)
	{
		return parent::getCommentByArticleId($key);
	}
}