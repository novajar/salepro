@extends('backend.layout.main') @section('content')
@if(session()->has('create_message'))
    <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{!! session()->get('create_message') !!}</div>
@endif
@if(session()->has('edit_message'))
    <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('edit_message') }}</div>
@endif
<!-- @if(session()->has('import_message'))
    <div class="alert alert-success alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{!! session()->get('import_message') !!}</div>
@endif -->
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif
<style>
    .table{
        width:90%;
        margin:auto;
    }

</style>
<section>
    <div class="container-fluid">
        @if(in_array("customers-price-add", $all_permission))
            <a href="{{route('customer_price.create')}}" class="btn btn-info"><i class="dripicons-plus"></i> {{trans('file.Add Customer')}}</a>&nbsp;
        @endif
    </div>
    <div class="table-responsive">
        <table id="customer-table" class="table">
            <thead>
                <tr>
                    <th class="not-exported"></th>
                    <th>Customer Name</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Submit Date</th>
                    <th>User Approve</th>
                    <th>Date Approve</th>
                    <th class="not-exported">{{trans('file.action')}}</th>
                </tr>
            </thead>
            <tbody>
                <?php $urut=0;?>
                @foreach($lims_customer_price_all as $key => $customer_price)
                <?php $urut++;?>
                <tr data-id="{{$customer_price->id}}">
                    <td>{{$urut}}</td>
                    <td>
                        {{$customer_price->customerName}}
                    </td>
                    <td>
                        {{$customer_price->productName}}
                    </td>
                    <td>{{number_format($customer_price->harga,0)}}</td>
                    <td>
                        {{$customer_price->created_at}}
                    </td>
                    <td>
                        {{$customer_price->userName}}
                    </td>
                    <td>
                        {{$customer_price->approve_at}}
                    </td>
                    <td>
                    <?php 
                    if(($customer_price->status_approve == 2 && $customer_price->status_approve != NULL)|| $customer_price->status_approve == 1){
                        if($customer_price->status_approve == 2){
                            echo "REJECT";
                        }else{
                            echo "APPROVE";
                        }
                        
                    }else{
                    ?>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{trans('file.action')}}
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul class="dropdown-menu edit-options dropdown-menu-right dropdown-default" user="menu">
                                <li><a href="{{url('customer_price/approve/'.$customer_price->id.'_1')}}" class="btn btn-link"><i class="dripicons-plus"></i> Approve</a></li>
                                <li><a href="{{url('customer_price/approve/'.$customer_price->id.'_2')}}" class="btn btn-link"><i class="dripicons-plus"></i> Reject</a></li>
                                
                            </ul>
                        </div>
                    <?php    
                    }
                    ?>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</section>



@endsection

@push('scripts')
<script type="text/javascript">
    $("ul#people").siblings('a').attr('aria-expanded','true');
    $("ul#people").addClass("show");
    $("ul#people #customer-list-menu").addClass("active");

    function confirmDelete() {
      if (confirm("Are you sure want to delete?")) {
          return true;
      }
      return false;
    }

    var customer_id = [];
    var user_verified = <?php echo json_encode(env('USER_VERIFIED')) ?>;
    var all_permission = <?php echo json_encode($all_permission) ?>;

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });


  $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

  if(all_permission.indexOf("customers-price-delete") == -1)
        $('.buttons-delete').addClass('d-none');
</script>
@endpush
