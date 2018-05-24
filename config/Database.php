<?php  
namespace config;
use config\Connect;

class Database extends Connect
{
	public function getCat()
	{
		$query = $this->prepare('SELECT * FROM category_blog');
		$query->execute();
		return $query->fetchAll();
	}
	public function getAllPost()
	{
		$query = $this->prepare("SELECT posts.*,category_blog.category_name FROM posts,category_blog WHERE posts.id_category = category_blog.id ORDER BY posts.id DESC");
		$query->execute();
		return $query->fetchAll();
	}
	public function getDetailPost($id)
	{
		$query = $this->prepare("SELECT * FROM posts WHERE id = '$id' ");
		$query->execute();
		return $query->fetch();
	}
	public function getAllCat($cat)
	{
		$query = $this->prepare("SELECT posts.* FROM posts WHERE posts.id_category = '$cat' ORDER BY posts.id DESC");
		$query->execute();
		return $query->fetchAll();
	}
	public function saveComment($post_id,$username,$reply)
	{
		$query = $this->prepare("INSERT INTO comments VALUES ('','".$post_id."','".$username."','".$reply."')");
		return $query->execute();
	}
	public function getCommentByArticleId($key)
	{
		$query = $this->prepare("SELECT comments.*,posts.id FROM comments JOIN posts ON comments.post_id = posts.id WHERE comments.post_id = '$key' ORDER BY comments.id DESC");
		$query->execute();
		return $query->fetchAll();
	}
	public function search($search)
	{
		$query = $this->prepare("SELECT posts.* FROM posts WHERE posts.title like '%".$search."%' ");
		$query->execute();
		return $query->fetchAll();
	}
}