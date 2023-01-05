<?php
namespace App;

// use Illuminate\Http\Request;
// use Illuminate\Support\Facades\Redirect;
// use App\Customer;
// use App\CustomerGroup;
// use App\Warehouse;
// use App\Biller;
// use App\Brand;
// use App\Category;
// use App\Product;
// use App\Unit;
// use App\Tax;
// use App\Sale;
// use App\Delivery;
// use App\PosSetting;
// use App\Product_Sale;
// use App\Product_Warehouse;
// use App\Payment;
// use App\Account;
// use Invoice;
// use App\Coupon;
// use App\GiftCard;
// use App\PaymentWithCheque;
// use App\PaymentWithGiftCard;
// use App\PaymentWithCreditCard;
// use App\PaymentWithPaypal;
// use App\User;
// use App\Variant;
// use App\ProductVariant;
// use App\CashRegister;
// use App\Returns;
// use App\Expense;
// use App\ProductPurchase;
// use App\ProductBatch;
// use App\Purchase;
// use App\RewardPointSetting;
use DB;
// use App\GeneralSetting;
// use Stripe\Stripe;
// use NumberToWords\NumberToWords;
use Auth;
// use Spatie\Permission\Models\Role;
// use Spatie\Permission\Models\Permission;
// use App\Mail\UserNotification;
// use Illuminate\Support\Facades\Mail;
// use Srmklive\PayPal\Services\ExpressCheckout;
// use Srmklive\PayPal\Services\AdaptivePayments;
// use GeniusTS\HijriDate\Date;
// use Illuminate\Support\Facades\Validator;

Class Helper 
{
    public function kodeSistem($table, $awal){
        // $kodesistem = $table::select('kodesistem')->where('created_at','=',"date_format(now(),'%d%m%Y')")->limit(1)->orderBy('created_at','desc')->get();
        // DB::enableQueryLog();
        // $ks = DB::table($table)->select('kodesistem')->where(DB::raw("(DATE_FORMAT(created_at,'%Y-%m-%d'))"),'=',DB::raw("(DATE_FORMAT(now(),'%Y-%m-%d'))"))->limit(1)->orderBy('created_at','desc')->first();
        $ks = DB::table($table)->select('kodesistem')->limit(1)->orderBy('created_at','desc')->first();
        
        // $query = DB::getQueryLog(); 

        if(empty($ks->kodesistem)){
            $kode = $awal.'-'.'000001';
        }else{
            $ctr = substr($ks->kodesistem,3)+1;
            $kode = $awal.'-'. str_pad($ctr,6,'0',STR_PAD_LEFT);
        }

        return($kode);
    }

}


?>