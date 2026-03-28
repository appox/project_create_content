
import 'package:<[@ layout.config.packageName @]>/src/layouts_gen/layout/base/module_info.dart';
import 'package:rover_modules_config/ui.dart';
import 'package:<[@ layout.config.packageName @]>/<[@ layout.config.packageName @]>.dart';

class <[@ layout.config.classPrefix @]>LayoutModuleInfo extends <[@ layout.config.classPrefix @]>BaseLayoutModuleInfo with <[@ layout.config.classPrefix @]>WidgetRefSupport {

  @override
  ModuleInfoContent get instanceHello => ModuleInfoContent.createVariantDocumentInfo(
    value: _create(value: ref.renameMe.genericDocFieldsColumn.helloPanel),
  );


  // TODO: sinnvoll - (in keePass verwendet)
  ModuleDocumentInfo _create({required GenericDocFieldsColumn value}) => ModuleDocumentInfo.create(
    collectionDataContent: GenericDocFieldsContent.createVariantColumn(
      value: value,
    ),
  );
}
    