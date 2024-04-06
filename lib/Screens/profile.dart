import 'package:ecommerceapp/account.dart';
import 'package:ecommerceapp/constants/sizes.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  String _value = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("asset/image/admin.png"),
              ),
            ),
            TextButton(onPressed: () {}, child: const Text("Change Profile Picture")),
            const SizedBox(
              height: KSizes.spaceBtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
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
                decoration: const InputDecoration(
                    labelText: "Full  Name",
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),
            // Username
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: "karan_sukhani",
                decoration: const InputDecoration(
                    labelText: "Username",
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems / 2,
            ),
            const Divider(),
            const SizedBox(
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
                initialValue: "ks35@gmail.com",
                decoration: const InputDecoration(
                    labelText: "E-mail ID",
                    hintText: "E-mail ID",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),
            // Mobile No
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: "+91762289739",
                decoration: const InputDecoration(
                    labelText: "Mobile No.",
                    hintText: "Mobile No.",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),
            // Gender
            Row(
              children: [
                const Text(
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
                const Text("Male"),
                Radio(
                    value: "Female",
                    groupValue: _value,
                    onChanged: (value) {
                      setState(() {
                        _value = "Female";
                      });
                    }),
                const Text("Female")
              ],
            ),
            const SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),
            //Date of Birth
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                initialValue: "10 Oct,1979",
                decoration: const InputDecoration(
                    labelText: "Date Of Birth",
                    hintText: "Date Of Birth",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Account()));
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Delete Account",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwItems,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
