<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CustomerPrice extends Model
{
    protected $fillable =[
        "customer_id", "product_id", "harga", "user_approve", "approve_at","status_approve"
    ];
    
    public function products()
    {
    	return $this->belongsTo('App\Product');
    }
    public function customer()
    {
    	return $this->belongsTo('App\Customer');
    }
    public function user()
    {
    	return $this->belongsTo('App\User');
    }
}
