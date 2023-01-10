<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/png" href="{{url('public/logo', $general_setting->site_logo)}}" />
    <title>{{$general_setting->site_title}}</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">

    <style type="text/css">
        * {
            font-size: 14px;
            line-height: 24px;
            font-family: 'Ubuntu', sans-serif;
            text-transform: capitalize;
        }
        .flex-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            /* align-items:flex-end; */
        }
        .flex-container > div {
            background-color: #fff;
           /* width: 30%; */
        }
        .faktur{
            width:18%;
            text-align:center;
            vertical-align:bottom;
            align-self: flex-end;
        }
        .detail{
            width: 30%;
        }
        .btn {
            padding: 7px 10px;
            text-decoration: none;
            border: none;
            display: block;
            text-align: center;
            margin: 7px;
            cursor:pointer;
        }

        .btn-info {
            background-color: #999;
            color: #FFF;
        }

        .btn-primary {
            background-color: #6449e7;
            color: #FFF;
            width: 100%;
        }
        td,
        th,
        tr,
        table {
            border-collapse: collapse;
        }
        /* tr {border-bottom: 1px dotted #ddd;} */
        .table-data td {border: 1px solid #000; padding-right:10px;}
        .bord {border: 1px solid #000; padding-right: 20px;}
        td,th {padding: 7px 4px;
            /* width: 80%; */
        }
        .no{
            text-align: center;
        }
       .kanan{
        text-align: right;
       }
        table {width: 100%;}
        tfoot tr th:first-child {text-align: left;}

        .centered {
            text-align: center;
            align-content: center;
        }
        small{font-size:11px;}
        .table-data{
            margin-top: 10px;
            
        }
        @media print {
            * {
                font-size:12px;
                line-height: 20px;
            }
            td,th {padding: 5px 0;}
            .hidden-print {
                display: none !important;
            }
            @page { margin: 1.5cm 0.5cm 0.5cm; }
            @page:first { margin-top: 0.5cm; }
            tbody::after {
                content: ''; display: block;
                page-break-after: always;
                page-break-inside: avoid;
                page-break-before: avoid;        
            }
        }
    </style>
  </head>
<body>

<div style="max-width:210mm;margin:0 auto">
    <!-- @if(preg_match('~[0-9]~', url()->previous()))
        @php $url = '../../pos'; @endphp
    @else
        @php $url = url()->previous(); @endphp
    @endif -->
    <div class="hidden-print">
        <table>
            <tr>
                <td><a href="{{$url}}" class="btn btn-info"><i class="fa fa-arrow-left"></i> {{trans('file.Back')}}</a> </td>
                <td><button onclick="window.print();" class="btn btn-primary"><i class="dripicons-print"></i> {{trans('file.Print')}}</button></td>
            </tr>
        </table>
        <br>
    </div>
        
    <div id="receipt-data">
        <div class="row">
            <div class="flex-container">
                <div class="detail">
                    <strong>{{$general_setting->company}}</strong><br>
                    <?php echo nl2br($general_setting->address);?>
                        <br>Telp: {{$general_setting->phone}}, Fax: {{$general_setting->fax}}
                        <br>NPWP: {{$general_setting->npwp}}
                        <br>Rek. {{$lims_account_data->account_no}}
                        <br>{{$lims_account_data->note}}
                    
                </div>
                <div class="faktur">
                <label><strong>SURAT JALAN</strong> </label><br/>
                <label>{{$lims_delivery_data->reference_no}}</label>
                    
                </div>
                <div class="detail">
                    <label>Tanggal: {{date('d F Y', strtotime($lims_sale_data->created_at->toDateString()))}} </label><br>
                    <label>Kepada YTH.</label><br>
                    <label><strong>{{$lims_customer_data->company_name}}</strong></label>
                    <br/><label>{{$lims_customer_data->address}}, {{$lims_customer_data->city}}</label>
                    <br/><label>{{trans('file.Phone Number')}}: {{$lims_warehouse_data->phone}}</label>
                    
                </div>
            </div>
        </div>
        <table class="table-data">
            <thead>
                <tr>
                    <th class="bord">No.</th>
                    <th style="width:300px;" class="bord">Item</th>
                    <th class="bord">Qty</th>
                    <th class="bord" style="width:400px;">Keterangan</th>
                </tr>                
            </thead>
            <tbody>
                <?php $total_product_tax = 0;
                $no = 0;
                ?>
               @foreach($lims_product_sale_data as $key => $product_sale_data)
               <?php 
                    $lims_product_data = \App\Product::find($product_sale_data->product_id);
                    if($product_sale_data->variant_id) {
                        $variant_data = \App\Variant::find($product_sale_data->variant_id);
                        $product_name = $lims_product_data->name.' ['.$variant_data->name.']';
                    }
                    elseif($product_sale_data->product_batch_id) {
                        $product_batch_data = \App\ProductBatch::select('batch_no')->find($product_sale_data->product_batch_id);
                        $product_name = $lims_product_data->name.' ['.trans("file.Batch No").':'.$product_batch_data->batch_no.']';
                    }
                    else
                        $product_name = $lims_product_data->name;

                    if($product_sale_data->imei_number) {
                        $product_name .= '<br>'.trans('IMEI or Serial Numbers').': '.$product_sale_data->imei_number;
                    }
                    $no++;
                ?>
               <tr>
                    <td class="no bord">{{$no}}</td>
                    <td class="bord">{!!$product_name!!}</td>
                    <td class="centered bord">{{$product_sale_data->qty}}</td>
                    <td class="centered bord"></td>
                </tr>
               @endforeach
            
           
            </tbody>
            <!-- </tfoot> -->
        </table>
        <table>
            <?php if(!empty($lims_delivery_data->reference_no)){?>
            <tr>
                <td><strong>Untuk</strong>
                <br>No. Surat Jalan:
                <!-- <br>{{$lims_delivery_data->reference_no}} <span style="margin-left: 20pt;">{{date('d F Y', strtotime($lims_delivery_data->created_at->toDateString()))}}</span> -->
                </td>  
                <td>
            </tr>
            <?php }else{?>
                <tr>
                <td><strong>Untuk</strong>
                <br>No. Surat Jalan:
                <!-- <br>{{$lims_sale_data->reference_no}} <span style="margin-left: 20pt;">{{date('d F Y', strtotime($lims_sale_data->created_at->toDateString()))}}</span> -->
                </td>  
                <td>
            </tr>
            <?php }?>
            <tr>
                <td>Catatan:
                    <br>Pembayaran Via Transfer ke {{$lims_account_data->note}}
                    <br>No. Rek. {{$lims_account_data->account_no}}
            </tr>
        </table>
        <table style="width:210mm;" class="centered">
            <tr>
                <td>Mengetahui</td>
                <td></td>
            </tr>
            <tr>
                <td>Ketua</td>
                <td>Jakarta, {{date('d F Y', strtotime($lims_sale_data->created_at->toDateString()))}}
                    <br>Pelaksana Admin Piutang
                </td>
            </tr>
            <tr style="height:75px;">
                <td><span > </span></td>
                <td><span style="height:250px;"> </span></td>
            </tr>
            <tr>
                <td>SUKIRMAN</td>
                <td>ZIKRI</td>
            </tr>
        </table>
        <table>
            <tbody>
              
            </tbody>
        </table>
        <!-- <div class="centered" style="margin:30px 0 50px">
            <small>{{trans('file.Invoice Generated By')}} {{$general_setting->site_title}}.
            {{trans('file.Developed By')}} LionCoders</strong></small>
        </div> -->
    </div>
</div>

<script type="text/javascript">
    localStorage.clear();
    function auto_print() {     
        window.print()
    }
    setTimeout(auto_print, 1000);
</script>

</body>
</html>
