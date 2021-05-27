<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductSize;
use App\Models\ProductReviews;
use App\Models\ProductDetail;

class ProductController extends Controller
{
    public function categories($value='')
    {
    	$cat= Category::get(['cat_name','cat_logo']);
        return response()->json(['data'=>$cat]);
    	
    }

    public function products($value='')
    {

        
    	$products= Product::with('category')->get(['cat_id','product_logo','product_name']);
        
    	return response()->json(['data' => $products]);
    	
       /* $companies = Company::all();
        return view('welcome',compact('companies'));
    */
    	 
    }

    public function productsSizes($value='')
    {


    	$productSize= ProductSize::get(['size']);
        return response()->json(['data' => $productSize]);
    	
    }

     public function productsReviews($value='')
    {


        $productsReviews= ProductReviews::where('product_id',1)->count();
        return response()->json(['Total Reviews' => $productsReviews]);
        
    }


    public function productDetail($value='')
    {


        $product_id = 1;  //Sampple id

        $productsReviews= ProductReviews::where('product_id',$product_id)->count();
        $productDetail= ProductDetail::where('product_id',$product_id)->get(['product_name','banner_image','rent','refundable_deposit']);
        $productSize= ProductSize::get(['size']);
;

        return response()->json(['Reviews' => $productsReviews,'Product Detail' => $productDetail,'Select Size' => $productSize]);
        
    }






}
