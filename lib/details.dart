import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

class HustleInfo extends StatelessWidget {
  const HustleInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var top =0.0;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // title: Text('Hustle information',style: TextStyle(color: Colors.black),),
            leading: const Icon(
              Icons.arrow_back,
              color: Color(0xFF322644),
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text('Save',
                      style: TextStyle(
                          color: Color(0xFFFF773D),
                          fontWeight: FontWeight.w700)))
            ],
            pinned: true,
            backgroundColor: const Color(0xFFF7F7F7),
            expandedHeight: size.height * 0.15,
            
            flexibleSpace: LayoutBuilder(
              builder: (context,constraints) {
                top=constraints.biggest.height;
                return  FlexibleSpaceBar(
                  
                  titlePadding:const EdgeInsets.only(left: 20, bottom: 15),
                  title: AnimatedOpacity(
                    duration:const Duration(milliseconds: 200),
                    opacity: top>=size.height*0.16?1.0:0.0,
                    child:const Text(
                      'Hustle Information',
                      style: TextStyle(
                          color: Color(0xFF322644),
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                );
              }
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    'Business details',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SizedBox(
                    width: size.width * 0.75,
                    child: const Text(
                      'Customers will be able to identify you with this business information',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    'Business name',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      hintText: 'Cladi house',
                      hintStyle: const TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.w400),
                      filled: true,
                      fillColor: const Color(0xFFF7F7F7),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text(
                    'Business description',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      hintText: 'Add a description',
                      hintStyle: const TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.w400),
                      filled: true,
                      fillColor: const Color(0xFFF7F7F7),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.035,
                  ),
                  const Text(
                    'Contact details',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  SizedBox(
                    width: size.width * 0.75,
                    child: const Text(
                      'Customers will use these details to contact you about your shop and your products',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    'Mobile number',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.33,
                        child: CountryPickerDropdown(
                          initialValue: 'KE',
                          itemBuilder: _buildDropdownItem,
                          itemFilter: (country) {
                            return country.isoCode == 'KE' ||
                                country.isoCode == 'GH' ||
                                country.isoCode == 'NG';
                          },
                          sortComparator: (Country a, Country b) =>
                              a.isoCode.compareTo(b.isoCode),
                          onValuePicked: (Country country) {},
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                            ),
                            hintText: '+254 0706123456',
                            hintStyle: const TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: const Color(0xFFF7F7F7),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    'Email address',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      hintText: 'cladikenya@gmail.com',
                      hintStyle: const TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.w400),
                      filled: true,
                      fillColor: const Color(0xFFF7F7F7),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    'My store url',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  SizedBox(
                    width: size.width * 0.75,
                    child: const Text(
                      'Customers will be able to find your store online with this store url. Customize it to your liking',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    'Store url',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                            ),
                            hintText: 'cladikenya',
                            hintStyle: const TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: const Color(0xFFF7F7F7),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      const Text(
                        '.hustlesasa.com',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 17),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  const Text(
                    'Social media',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SizedBox(
                    width: size.width * 0.75,
                    child: const Text(
                      'For your store,you can go to your social pages',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/ig.png",
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      const Text(
                        'Instagram',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                            ),
                            hintText: 'Cladi_ke',
                            hintStyle: const TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: const Color(0xFFF7F7F7),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                   Row(
                    children: [
                      Image.asset(
                        "assets/images/fb.png",
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      const Text(
                        'Facebook',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                            ),
                            hintText: 'Cladi_ke',
                            hintStyle: const TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.w400),
                            filled: true,
                            fillColor: const Color(0xFFF7F7F7),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(
            country,
          ),
          const SizedBox(
            width: 3.0,
          ),
          Text(
            "+${country.phoneCode}(${country.isoCode})",
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      );
}
