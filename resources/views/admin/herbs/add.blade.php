@extends('admin.layouts.app')
@section('content')

<div class=" wrapper container-fluid">
    <div class="table-responsive content-wrapper table-margin">
        <h2>เพิ่มสมุนไพร</h2>
        <form action="{{route('create-herb')}}" method="post" enctype="multipart/form-data">
            {{csrf_field()}}
            <div class="form-group">
                <label for="name">ชื่อ</label>
                <input type="text" class="form-control" id="name" name="name">
            </div>
            <div class="form-group">
                <label for="exampleFormControlTextarea1">สรรพคุณ</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" id="description" name="description"
                    rows="10"></textarea>
            </div>
            <div class="form-group">
                <label for="picture">รูปภาพ</label>
                <br>
                <input class="form-control form-control-lg" id="image" name="image" type="file">
            </div>
            <button type="submit" name="submit" class="btn btn-success">เพิ่มข้อมูล</button>
        </form>
    </div>
</div>
@endsection
