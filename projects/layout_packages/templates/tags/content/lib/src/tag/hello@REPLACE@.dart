
// ignore_for_file: unused_import

import 'package:mars_api_models/mars_api_models.dart';
import 'package:mars_base/mars_base.dart';
import 'package:<[@ layout.model.packageName @]>/mars_layout_base_published_projects_model.dart';
import 'package:mars_msc_markup/mars_msc_markup.dart';
import 'package:<[@ layout.tag.packageName @]>/src/layouts_gen/layouts.dart';
import 'package:<[@ layout.tag.packageName @]>/src/layouts_gen/tag/base/./hello.dart';
import 'package:mars_msc_tag_builder/mars_msc_tag_builder.dart';


class <[@ layout.tag.classPrefix @]>TagHello extends <[@ layout.tag.classPrefix @]>BaseTagHello {

  <[@ layout.tag.classPrefix @]>TagHello({required super.buildInfo});

  @override
  MsctbBuildTagResponse handleStartTag({required <[@ layout.tag.classPrefix @]>TagHelloParam param}) {
    return MsctbBuildTagResponse.createResponse(
      modules: [
        _createResponseModule(info: param.attr.info),
      ],
      tagBuildLog: param.tagLog,
    );
  }

  MsmModule _createResponseModule({String? info = "NO_INFO"}) {
    final mappingFields = <[@ layout.model.classPrefix @]>ModelHelloDocumentMapping(
      helloTitle: "HELLO <[@ layout.tag.packageName @]>",
      helloInfo: "INFO: $info"
    ).asApiModule();

    return MsmModule(
      apiModule: NmodTeamModule(
        type: NmodContentBlockType.moduleInfo.name,
        moduleData: NmodTeamModuleData(
          layoutId: <[@ layout.model.classPrefix @]>MarsBuildLayouts.module_hello,
          mappingFields: mappingFields,
        ),
      ),
    );
  }

}    

/// tag config layouts (koennen auch in der app gesetzt werden.)
class <[@ layout.tag.classPrefix @]>HelloLayoutsBuilder with <[@ layout.tag.classPrefix @]>HelloLayoutsBuilderSupport {
  @override
  <[@ layout.tag.classPrefix @]>HelloLayoutsModel? get defaultLayout => layoutDefault;

  @override
  <[@ layout.tag.classPrefix @]>HelloLayoutsModel? get layoutDefault => <[@ layout.tag.classPrefix @]>HelloLayoutsModel(
    mainLayout: <[@ layout.model.classPrefix @]>MarsBuildLayouts.module_hello,
  );
  
}
    