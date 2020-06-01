<!-- Modal -->
<div class="modal fade" id="modalArchivo-T" tabindex="-1" role="dialog" aria-labelledby="modalDatosCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document" >
        <div class="modal-content">
        <div class="modal-header" >
            <h5 class="modal-title" id="txtTitularFoto">Importar Tema</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <form action="#" method="post" id="formSubida">
            
                <input id="image1" type="file"  class="file"  data-theme="fas">
            
                <input type="hidden" class="form-control-file" name="clavePersona1" id="clavePersona1" >
                <input type="hidden" class="form-control-file" name="tamanoKB1" id="tamanoKB1" value="3000">
                <div class="col text-center">
                <button type="button" onclick="importarArchivoTema();" class="btn btn-outline-dark" style="margin-top:8px;">
                    <i class="fas fa-download"></i> Importar Tema
                </button>
                </div>
            </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-dark" data-dismiss="modal">
                <i class="fas fa-times"></i> Cerrar
            </button>
        </div>
        </div>
    </div>
    </div>

    <script>
        $("#image1").fileinput({
            'theme': 'explorer-fas',
            overwriteInitial: false,
            initialPreviewAsData: true,
            language: 'es',
            showUpload: false,
            showCaption: true,
            showCancel: false,
            showRemove: true,
            browseClass: "btn btn-dark",
            fileType: "json",
            allowedFileExtensions: ['json'],
            overwriteInitial: false,
            maxFileSize: 3000,
            maxFilesNum: 1
        });
    </script>