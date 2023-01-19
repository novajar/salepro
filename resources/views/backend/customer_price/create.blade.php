@extends('backend.layout.main') @section('content')
@if(session()->has('not_permitted'))
  <div class="alert alert-danger alert-dismissible text-center"><button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>{{ session()->get('not_permitted') }}</div>
@endif

<section class="forms">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex align-items-center">
                        <h4>Add Client Price</h4>
                    </div>
                    <div class="card-body">
                        <p class="italic"><small>{{trans('file.The field labels marked with * are required input fields')}}.</small></p>
                        {!! Form::open(['route' => 'customer_price.store', 'method' => 'post']) !!}
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>{{trans('file.customer')}} *</label>
                                    <select required name="customer_id" id="customer_id" class="selectpicker form-control" data-live-search="true" title="Select customer...">
                                        <?php
                                            // $deposit = [];
                                            // $points = [];
                                        ?>
                                        @foreach($lims_customer_list as $customer)
                                        <?php
                                            // $deposit[$customer->id] = $customer->deposit - $customer->expense;

                                            // $points[$customer->id] = $customer->points;
                                        ?>
                                        <option value="{{$customer->id}}">{{$customer->name . ' (' . $customer->phone_number . ')'}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Product *</label>
                                    <select required name="product_id" id="product_id" class="selectpicker form-control" data-live-search="true" title="Select product...">
                                        <?php
                                            // $deposit = [];
                                            // $points = [];
                                        ?>
                                        @foreach($lims_product_list as $product)
                                        <?php
                                            // $deposit[$customer->id] = $customer->deposit - $customer->expense;

                                            // $points[$customer->id] = $customer->points;
                                        ?>
                                        <option value="{{$product->id}}">{{$product->name . ' (' . $product->code . ')'}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Price *</label>
                                    <input required type="text" name="harga" class="form-control numkey" id="harga">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="hidden" name="pos" value="0">
                            <input type="submit" value="{{trans('file.submit')}}" class="btn btn-primary">
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


@endsection

@push('scripts')
<script type="text/javascript">
    $("ul#people").siblings('a').attr('aria-expanded','true');
    $("ul#people").addClass("show");
    $("ul#people #customer-create-menu").addClass("active");

    $('.asterisk').hide();
    $(".user-input").hide();
    
    $('input[name="customer_id"]').prop('required',true);
    $('input[name="product_id"]').prop('required',true);
    $('input[name="harga"]').prop('required',true);

</script>
@endpush
