<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $fillable =[
        "invoice_id","kodesistem", "reference_no", "sales_id", "user_input"
    ];
}