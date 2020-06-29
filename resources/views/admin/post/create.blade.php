@extends('layouts.backend.app')

@section('title','Post')

@push('css')
   <!-- Bootstrap Select Css -->
    <link href="{{ asset('assets/backend/plugins/bootstrap-select/css/bootstrap-select.css ') }}" rel="stylesheet" />
<!-- Multi Select Css -->
    <link href="{{ asset('assets/backend/plugins/multi-select/css/multi-select.css') }}" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

     <link href="{{ asset('assets/backend/css/themes/all-themes.css') }}" rel="stylesheet" />
    @endpush

@section('content')
 <div class="container-fluid">

            <!-- Vertical Layout -->
            <form action="{{ route('admin.post.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
            <div class="row clearfix">
                <div class="col-lg-7 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                              ADD NEW POST
                            </h2>

                        </div>
                        <div class="body">

                                <div class="form-group form-float">
                                    <div class="form-line">

                                        <input type="text" id="title" name="title" class="form-control" >
                                        <label class="form-label">Post title</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="image">Featurd image</label>
                                   <input type="file" name="image">
                                </div>
                                <div class="form-group">

                                   <input type="checkbox" id="publish" name="status" value="1">
                                  <label for="publish">Publish</label>
                                </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                              Category && Tag
                            </h2>

                        </div>
                        <div class="body">

                                <div class="form-group form-float">
                                <div class="form-line {{ $errors->has('categories') ? 'focused error' : '' }}">
                                    <label for="category">Select Category</label>

                                     <select name="categories[]" id="category" class="form-control show-tick" multiple>
                                        @foreach($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                                <div class="form-group form-float">
                                <div class="form-line {{ $errors->has('tags') ? 'focused error' : '' }}">
                                    <label for="category">Select Tag</label>

                                     <select name="tags[]" id="tag" class="form-control show-tick" multiple >
                                        @foreach($tags as $tag)
                                            <option value="{{ $tag->id }}">{{ $tag->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                             Body
                            </h2>

                        </div>

                        <div class="body">

                           <textarea name="body" id="tinymce" ></textarea>
 <a href="{{ route('admin.post.index') }}"  class="btn btn-info m-t-15 waves-effect">BACK</a>
                                <button type="submit" class="btn btn-primary m-t-15 waves-effect">SAVE</button>

                        </div>

                    </div>
                </div>

            </div>
             </form>
            <!-- #END# Vertical Layout -->

        </div>
@endsection

@push('js')
  <!-- Select Plugin Js -->
    <script src="{{ asset('assets/backend/plugins/bootstrap-select/js/bootstrap-select.js') }}"></script>
<!-- Multi Select Plugin Js -->
    <script src="{{ asset('assets/backend/plugins/multi-select/js/jquery.multi-select.js') }}"></script>
<!-- TinyMCE -->
    <script src="{{ asset('assets/backend/plugins/tinymce/tinymce.js') }}"></script>
    <script>
        $(function () {

    //TinyMCE
    tinymce.init({
        selector: "textarea#tinymce",
        theme: "modern",
        height: 300,
        plugins: [
            'advlist autolink lists link image charmap print preview hr anchor pagebreak',
            'searchreplace wordcount visualblocks visualchars code fullscreen',
            'insertdatetime media nonbreaking save table contextmenu directionality',
            'emoticons template paste textcolor colorpicker textpattern imagetools'
        ],
        toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
        toolbar2: 'print preview media | forecolor backcolor emoticons',
        image_advtab: true
    });
    tinymce.suffix = ".min";
    tinyMCE.baseURL = '{{ asset('assets/backend/plugins/tinymce') }}';
});
    </script>
@endpush
