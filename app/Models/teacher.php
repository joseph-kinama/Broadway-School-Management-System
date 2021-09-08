<?php
namespace App\Models;

use CodeIgniter\Model;


class Teacher extends Model
{
    // ...
    protected $table      = 'teacher';
    protected $primaryKey = 'id';

    // protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    // protected $useSoftDeletes = true;

    protected $allowedFields = ['firstname', 'lastname', 'email', 'message'];

    // protected $useTimestamps = false;
    // protected $createdField  = 'created_at';
    // protected $updatedField  = 'updated_at';
    // protected $deletedField  = 'deleted_at';

    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;

    protected $DBGroup = 'default';

    public function get_data($email){
        return $this->where('email', $email)->first();
    }
    public function get_teachers(){
         return $this->findAll();
    }
}

?>