import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application/constants/constants.dart';
import 'package:flutter_application/webservice/webservice.dart';
import 'package:flutter_svg/svg.dart';

class UserFiles extends StatelessWidget {
  const UserFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Users list",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          FutureBuilder(
                future: Webservice().fetchUsers(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    log("length ==" + snapshot.data!.length.toString());
                    return SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              // minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("User Id"),
                ),
                DataColumn(
                  label: Text("Id"),
                ),
                DataColumn(
                  label: Text("Title"),
                ),
              ],
              rows: List.generate(
                snapshot.data!.length, (index)=>
                DataRow(cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              "assets/doc_file.svg",
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(snapshot.data![index].userId.toString()),
            ),
          ],
        ),
      ),
      DataCell(Text(snapshot.data![index].id.toString())),
      DataCell(Text(snapshot.data![index].title)),
    ],)
              ),
            ),
          );
                  }else {
                    return const Center(child: CircularProgressIndicator());
                  }
                }
          )

        ],
      ),
    );
  }
}
