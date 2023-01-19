<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CustomerGroup;
use App\Customer;
use App\CustomerPrice;
use App\Product;
use App\User;
use App\Account;
use Auth;
use DB;
use Illuminate\Validation\Rule;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Mail\UserNotification;
use Illuminate\Support\Facades\Mail;

class CustomerPriceController extends Controller
{
    public function index()
    {
        $role = Role::find(Auth::user()->role_id);
        if($role->hasPermissionTo('customers-price-index')){
            $permissions = Role::findByName($role->name)->permissions;
            foreach ($permissions as $permission)
                $all_permission[] = $permission->name;
            if(empty($all_permission))
                $all_permission[] = 'dummy text';
            // $all_permission[] = ['customers-price-add','customers-price-edit','customers-price-approve'];
            // if($request->input('length') != -1)
            //     $limit = $request->input('length');
            // else
            //     $limit = $totalData;
            // $start = $request->input('start');
            // $order = 'customer_price.'.$columns[$request->input('order.0.column')];
            // $dir = $request->input('order.0.dir');

            $lims_customer_price_all =  CustomerPrice::select('customer_prices.*','products.name as productName','products.code','customers.name as customerName','users.name as userName')
                        ->with('products', 'customer', 'user')
                        ->leftjoin('products', 'products.id', '=', 'customer_prices.product_id')
                        ->leftjoin('customers', 'customers.id', '=', 'customer_prices.customer_id')
                        ->leftjoin('users', 'users.id', '=', 'customer_prices.user_approve')
                        // ->offset($start)
                        // ->limit($limit)
                        // ->orderBy($order,$dir)
                        ->get();
            return view('backend.customer_price.index', compact('all_permission','lims_customer_price_all','permissions'));
        }
        else
            return redirect()->back()->with('not_permitted', 'Sorry! You are not allowed to access this module');
    }

    public function create()
    {
        $role = Role::find(Auth::user()->role_id);
        $lims_customer_list = Customer::where('is_active', true)->get();
        $lims_product_list = Product::where('is_active', true)->get();
        if($role->hasPermissionTo('customers-add')){
            $lims_customer_group_all = CustomerGroup::where('is_active',true)->get();
            return view('backend.customer_price.create', compact('lims_customer_group_all','lims_customer_list','lims_product_list'));
        }
        else
            return redirect()->back()->with('not_permitted', 'Sorry! You are not allowed to access this module');
    }

    public function store(Request $request)
    {
        $lims_customer_price_data = $request->all();
        $message = 'Customer price';
        $lims_customer_data['customer_id'] = $lims_customer_price_data['customer_id'];
        $lims_customer_data['product_id'] = $lims_customer_price_data['product_id'];
        $lims_customer_data['harga'] = $lims_customer_price_data['harga'];
        
        $message .= ' created successfully!';

        CustomerPrice::create($lims_customer_data);
        return redirect('customer_price')->with('create_message', $message);
    }
    
    public function approve($id)
    {
        
        // return redirect('customer_price')->with('create_message', $id); 
        $role = Role::find(Auth::user()->role_id);
            $tipe = explode("_",$id);
            $id = $tipe[0];
        if($role->hasPermissionTo('customers-price-approve')){
            $lims_customer_data = CustomerPrice::find($id);
            $input['user_approve'] = Auth::id();
            $input['approve_at'] = date("Y-m-d h:i:s");
            $tipe = $tipe[1];
            $message = 'Customer price'; 
            if($tipe == '1'){
                $status = 1;       
                $message .= ' approved!';
            }else{
                $status = 2;       
                $message .= ' rejected!';
            }
            $input['status_approve'] = $status;

            $lims_customer_data->update($input);
            return redirect('customer_price')->with('create_message', $message); 
        }
        else
            return redirect()->back()->with('not_permitted', 'Sorry! You are not allowed to access this module');
    }
       
    public function reject($id)
    {
        $role = Role::find(Auth::user()->role_id);
        if($role->hasPermissionTo('customers-price-approve')){
            $lims_customer_data = CustomerPrice::find($id);
            $input['user_approve'] = Auth::id();
            $input['approve_at'] = date("Y-m-d h:i:s");
            if($tipe = 'approve'){
                $status = 1;
            }else{
                $status = 0;
            }
            $input['status_approve'] = $status;
            $message = 'Customer price';        
            $message .= ' approved!';

            $lims_customer_data->update($input);
            return redirect('customer_price')->with('create_message', $message); 
        }
        else
            return redirect()->back()->with('not_permitted', 'Sorry! You are not allowed to access this module');
    }

    public function edit($id)
    {
        $role = Role::find(Auth::user()->role_id);
        if($role->hasPermissionTo('customers-price-edit')){
            $lims_customer_data = CustomerPrice::find($id);
            $input['user_approve'] = Auth::id();
            $input['approve_at'] = date("Y-m-d h:i:s");
            $input['status_approve'] = 1;
            $message = 'Customer price';        
            $message .= ' approved!';
    
            $lims_customer_data->update($input);
            return redirect('customer_price')->with('create_message', $message);
        }
        else
            return redirect()->back()->with('not_permitted', 'Sorry! You are not allowed to access this module');
    }


}
