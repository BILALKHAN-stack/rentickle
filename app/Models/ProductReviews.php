<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductReviews extends Model
{
    use HasFactory;
    protected  $table = 'rentickle_products_reviews_tbl';



    public function productDetail($value='')
    {
    	return $this->belongsTo(ProductDetail::class,'id');
    }
}
