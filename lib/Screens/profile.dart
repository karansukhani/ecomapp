import 'package:ecommerceapp/account.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  String _value = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/image/admin.png"),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("Change Profile Picture")),
            SizedBox(
              height: KSizes.spaceBtwItems / 2,
            ),
            Divider(),
            SizedBox(
              height: KSizes.spaceBtwItems / 2,
            ),
            Text(
              "Profile Information",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Full Name
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: "Karan Sukhani",
                decoration: InputDecoration(
                    labelText: "Full  Name",
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),
            // Username
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: "karan_sukhani",
                decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(
              height: KSizes.spaceBtwItems / 2,
            ),
            Divider(),
            SizedBox(
              height: KSizes.spaceBtwItems / 2,
            ),
            Text(
              "Personal Information",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Mail id
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: "ks@gmail.com",
                decoration: InputDecoration(
                    labelText: "E-mail ID",
                    hintText: "E-mail ID",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),
            // Mobile No
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: "+91762289739",
                decoration: InputDecoration(
                    labelText: "Mobile No.",
                    hintText: "Mobile No.",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),
            // Gender
            Row(
              children: [
                Text(
                  "Gender :",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Radio(
                    value: "Male",
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = "Male";
                      });
                    }),
                Text("Male"),
                Radio(
                    value: "Female",
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = "Female";
                      });
                    }),
                Text("Female")
              ],
            ),
            SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),
            //Date of Birth
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: "10 Oct,1979",
                decoration: InputDecoration(
                    labelText: "Date Of Birth",
                    hintText: "Date Of Birth",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Account()));
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Delete Account",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
