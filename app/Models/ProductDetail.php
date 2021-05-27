<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductDetail extends Model
{
    use HasFactory;
    protected  $table = 'rentickle_products_detail_tbl';


    public function reviews($value='')
    {
    	return $this->hasMany(ProductReviews::class,'product_id');
    	//return $this->hasMany(Product::class,'cat_id');
    }
}
