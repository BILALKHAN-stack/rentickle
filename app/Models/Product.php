<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected  $table = 'rentickle_products_tbl';

    public function category(){
    	return $this->belongsTo(Category::class,'id');
    }
}
