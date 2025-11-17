import 'package:flutter/material.dart';

class RetailerInquiryForm extends StatelessWidget {
  
  static const String routeName = '/retailer_enquiryscreen';

  const RetailerInquiryForm({
    super.key});

  Widget buildField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
        const SizedBox(height: 6),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Retailer Inquiries",
            style: TextStyle(
              fontSize: width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),

          const Text(
            "This form is for retailer inquiries only. For all other customer or shopper support requests, please visit the links below this form.",
            style: TextStyle(fontSize: 16),
          ),
         SizedBox(height: height * 0.03),

          Row(
            children: [
              Expanded(child: buildField("First Name *", "Enter Your First Name")),
              const SizedBox(width: 15),
              Expanded(child: buildField("Last Name *", "Enter Your Last Name")),
            ],
          ),
         SizedBox(height: height * 0.02),

          buildField("Company *", "Your Company"),
         SizedBox(height: height * 0.02),

          buildField("Title", "Your Title"),
         SizedBox(height: height * 0.02),

          Row(
            children: [
              Expanded(child: buildField("Email *", "Enter Your Email")),
              const SizedBox(width: 15),
              Expanded(child: buildField("Phone", "Your Phone Number")),
            ],
          ),
         SizedBox(height: height * 0.02),

          Text(
            "Textarea",
            style: TextStyle(
              fontSize: width * 0.035,
              fontWeight: FontWeight.w500,
            ),
          ),
         SizedBox(height: height * 0.005),

          Container(
            height: height * 0.20,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: const TextField(
              maxLines: null,
              expands: true,
              decoration: InputDecoration(
                hintText: "Additional Comments",
                border: InputBorder.none,
              ),
            ),
          ),

         SizedBox(height: height * 0.03),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.07,
                vertical: height * 0.018,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(
              "Submit",
              style: TextStyle(fontSize: width * 0.04, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
