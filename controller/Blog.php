<?php  
namespace controller;
use config\Database as DB;

class Blog extends DB
{
	public function getCategory()
	{
		return parent::getCat();
	}
	public function getPost(){
		return parent::getAllPost();
	}
	public function detail($id)
	{
		return parent::getDetailPost($id);
	}
	public function getAllCategory($cat)
	{
		return parent::getAllCat($cat);
	}
	public function searchData($search)
	{
		return parent::search($search);
	}
}