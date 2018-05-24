<?php 

namespace config;
use PDO;

class Connect extends PDO
{
	private $HOST = 'localhost';
	private $DBNAME = 'crudoop';
	private $USER = 'root';
	private $PASS = '';

	public function __construct()
	{
		parent::__construct('mysql:host='.$this->HOST.';dbname='.$this->DBNAME,
					$this->USER,
					$this->PASS
				);
		\Cloudinary::config(array( 
		  "cloud_name" => "dumet", 
		  "api_key" => "848823656274619", 
		  "api_secret" => "wOWWYjyhRNs3-2qJVcYLYNcEm98" 
		));
	}
}