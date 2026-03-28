
import 'package:mars_layout_base/mars_layout_base.dart';
import 'package:mars_layout_base_def_config/mars_layout_base_def_config.dart';
import 'package:<[@ layout.config.packageName @]>/mars_layout_base_published_projects_config.dart';
import 'package:<[@ layout.config.packageName @]>/src/layouts_gen/widget/base/generic_doc_fields/generic_doc_fields_column.dart';
import 'package:rover_modules_config/ui.dart';


class <[@ layout.config.classPrefix @]>WidgetGenericDocFieldsColumn extends <[@ layout.config.classPrefix @]>BaseWidgetGenericDocFieldsColumn with YbGenericDocFieldsBuilder, <[@ layout.config.classPrefix @]>WidgetRefSupport {
  @override
  GenericDocFieldsColumn buildHelloPanel(<[@ layout.config.classPrefix @]>HelloLayMaMo b) {
    return buildColumn(
      b,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //
        b.fieldHelloTitle(ref.def.textContent.materialBodyLarge),
        b.fieldHelloInfo(ref.def.textContent.materialBodyMedium),
      ],
      parents: [
        YbdWidgetPaddingType.paddingLtrb8484,
      ],
    );
  }

}    
    