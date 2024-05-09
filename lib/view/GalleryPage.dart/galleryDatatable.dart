import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:newproject/model/model.dart';

class GalleryDataTable extends StatefulWidget {
  final List<GalleryItem> galleryItems;

  GalleryDataTable(this.galleryItems);

  @override
  State<GalleryDataTable> createState() => _GalleryDataTableState();
}

class _GalleryDataTableState extends State<GalleryDataTable> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable2(
        columns: [
          DataColumn2(label: Text('Name'), size: ColumnSize.S),
          DataColumn2(label: Text('UID'), size: ColumnSize.M),
          DataColumn2(label: Text('DocType'), size: ColumnSize.M),
          DataColumn2(label: Text('URL'), size: ColumnSize.L),
        ],
        rows: widget.galleryItems
            .map(
              (item) => DataRow(
                cells: [
                  DataCell(Text(item.name)),
                  DataCell(Text(item.uid)),
                  DataCell(Text(item.docType.toString())),
                  DataCell(Text(item.url)),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
