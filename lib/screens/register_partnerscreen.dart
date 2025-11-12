import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';

class RegisterPartnerscreen extends StatefulWidget {
  static const String routeName = '/registerpartner_screen';
  const RegisterPartnerscreen({super.key});

  @override
  State<RegisterPartnerscreen> createState() => _RegisterPartnerscreenState();
}

class _RegisterPartnerscreenState extends State<RegisterPartnerscreen> {
  // Controllers
  final _businessNameCtrl = TextEditingController();
  final _addressCtrl = TextEditingController();
  final _latCtrl = TextEditingController();
  final _lngCtrl = TextEditingController();
  final _vendorEmailCtrl = TextEditingController();
  final _vendorPhoneCtrl = TextEditingController();
  final _userNameCtrl = TextEditingController();
  final _userEmailCtrl = TextEditingController();
  final _userPhoneCtrl = TextEditingController();
  final _userPasswordCtrl = TextEditingController();

  String? _vendorType;
  String? _province;
  String? _district;
  String? _city;
  bool _agreeTerms = false;

  GoogleMapController? _mapController;
  Marker? _selectedMarker;
  LatLng _initialLatLng = const LatLng(27.7172, 85.3240); // Kathmandu default
  double _mapZoom = 13;

  // Images/documents (image picker)
  final List<XFile> _pickedImages = [];
  final ImagePicker _picker = ImagePicker();

  @override
  void dispose() {
    _businessNameCtrl.dispose();
    _addressCtrl.dispose();
    _latCtrl.dispose();
    _lngCtrl.dispose();
    _vendorEmailCtrl.dispose();
    _vendorPhoneCtrl.dispose();
    _userNameCtrl.dispose();
    _userEmailCtrl.dispose();
    _userPhoneCtrl.dispose();
    _userPasswordCtrl.dispose();
    _mapController?.dispose();
    super.dispose();
  }

  Future<void> _pickImages() async {
    try {
      final List<XFile>? images = await _picker.pickMultiImage(
        imageQuality: 80,
      );
      if (images != null && images.isNotEmpty) {
        setState(() {
          _pickedImages.addAll(images);
        });
      }
    } catch (e) {
      // handle error or permissions
    }
  }

  Future<void> _pickSingleImage() async {
    try {
      final XFile? file = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
      );
      if (file != null) {
        setState(() => _pickedImages.add(file));
      }
    } catch (e) {}
  }

  void _onMapTap(LatLng pos) {
    setState(() {
      _selectedMarker = Marker(markerId: const MarkerId('sel'), position: pos);
      _latCtrl.text = pos.latitude.toStringAsFixed(6);
      _lngCtrl.text = pos.longitude.toStringAsFixed(6);
      _mapController?.animateCamera(CameraUpdate.newLatLng(pos));
    });
  }

  void _submitForm() {
    if (!_agreeTerms) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please agree to terms.')));
      return;
    }
    final payload = {
      'businessName': _businessNameCtrl.text,
      'vendorType': _vendorType,
      'province': _province,
      'district': _district,
      'city': _city,
      'address': _addressCtrl.text,
      'latitude': _latCtrl.text,
      'longitude': _lngCtrl.text,
      'vendorEmail': _vendorEmailCtrl.text,
      'vendorPhone': _vendorPhoneCtrl.text,
      'userName': _userNameCtrl.text,
      'userEmail': _userEmailCtrl.text,
      'userPhone': _userPhoneCtrl.text,
    };
    debugPrint('Submitting partner => $payload');
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Submitted (demo).')));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = screenWidth * 0.06;
    final spacing = screenHeight * 0.02;
    final titleFont = screenHeight * 0.025;
    final labelFont = screenHeight * 0.017;
    final inputHeight = screenHeight * 0.06;
    final buttonHeight = screenHeight * 0.065;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: spacing),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back arrow
              GestureDetector(
                onTap: () {
                  if (Navigator.of(context).canPop()) {
                    context.pop();
                  } else {
                    context.go('/');
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(screenWidth * 0.015),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    size: screenWidth * 0.06,
                  ),
                ),
              ),

              SizedBox(height: spacing),

              Center(
                child: Text(
                  'BECOME A PARTNER',
                  style: TextStyle(
                    fontSize: titleFont,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: spacing * 1.2),
              Text(
                'Business Information',
                style: TextStyle(
                  fontSize: labelFont * 1.02,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: spacing * 0.6),

              _label('Business Name', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: TextField(
                  controller: _businessNameCtrl,
                  decoration: InputDecoration(
                    hintText: 'Enter business name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing * 0.6),

              _label('Vendor Type', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: DropdownButtonFormField<String>(
                  value: _vendorType,
                  onChanged: (v) => setState(() => _vendorType = v),
                  items: const [
                    DropdownMenuItem(value: 'Listing', child: Text('Listing')),
                    DropdownMenuItem(value: 'Service', child: Text('Service')),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              SizedBox(height: spacing),

              _label('Province', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: DropdownButtonFormField<String>(
                  value: _province,
                  onChanged: (v) => setState(() => _province = v),
                  items: const [
                    DropdownMenuItem(
                      value: 'Province 1',
                      child: Text('Province 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Province 2',
                      child: Text('Province 2'),
                    ),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing * 0.6),

              _label('District', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: DropdownButtonFormField<String>(
                  value: _district,
                  onChanged: (v) => setState(() => _district = v),
                  items: const [
                    DropdownMenuItem(
                      value: 'Kathmandu',
                      child: Text('Kathmandu'),
                    ),
                    DropdownMenuItem(
                      value: 'Lalitpur',
                      child: Text('Lalitpur'),
                    ),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing * 0.6),

              _label('City', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: DropdownButtonFormField<String>(
                  value: _city,
                  onChanged: (v) => setState(() => _city = v),
                  items: const [
                    DropdownMenuItem(value: 'City A', child: Text('City A')),
                    DropdownMenuItem(value: 'City B', child: Text('City B')),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              SizedBox(height: spacing),

              _label('Address', labelFont),
              SizedBox(height: 6),
              TextField(
                controller: _addressCtrl,
                maxLines: 2,
                decoration: InputDecoration(
                  hintText: 'Enter business address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                ),
              ),

              SizedBox(height: spacing),

              _label('Pick location on map', labelFont),
              SizedBox(height: 6),
              Container(
                height: screenHeight * 0.28,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: _initialLatLng,
                      zoom: _mapZoom,
                    ),
                    onMapCreated: (ctrl) => _mapController = ctrl,
                    onTap: _onMapTap,
                    markers: _selectedMarker != null ? {_selectedMarker!} : {},
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    mapType: MapType.normal,
                  ),
                ),
              ),

              SizedBox(height: spacing * 0.6),

              _label('Latitude', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: TextField(
                  controller: _latCtrl,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing * 0.6),
              _label('Longitude', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: TextField(
                  controller: _lngCtrl,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              SizedBox(height: spacing),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _label('Vendor Email', labelFont),
                        SizedBox(height: 6),
                        SizedBox(
                          height: inputHeight,
                          child: TextField(
                            controller: _vendorEmailCtrl,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _label('Phone', labelFont),
                        SizedBox(height: 6),
                        SizedBox(
                          height: inputHeight,
                          child: TextField(
                            controller: _vendorPhoneCtrl,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: spacing),

              _label('Documents (PNG or JPEG)', labelFont),
              SizedBox(height: 6),
              GestureDetector(
                onTap: _pickImages,
                child: Container(
                  height: screenHeight * 0.12,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: _pickedImages.isEmpty
                      ? Row(
                          children: [
                            const Icon(Icons.upload_file_outlined),
                            SizedBox(width: screenWidth * 0.03),
                            Expanded(
                              child: Text('Tap to select images (PNG/JPEG)'),
                            ),
                          ],
                        )
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _pickedImages.length,
                          itemBuilder: (c, i) {
                            final XFile f = _pickedImages[i];
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.file(
                                      File(f.path),
                                      height: screenHeight * 0.1,
                                      width: screenHeight * 0.1,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                    right: -6,
                                    top: -6,
                                    child: IconButton(
                                      icon: const Icon(Icons.close, size: 18),
                                      onPressed: () {
                                        setState(
                                          () => _pickedImages.removeAt(i),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                ),
              ),

              SizedBox(height: spacing * 1.2),

              Text(
                'User Information',
                style: TextStyle(
                  fontSize: labelFont * 1.02,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: spacing * 0.6),

              _label('Name', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: TextField(
                  controller: _userNameCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing * 0.6),
              _label('Email', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: TextField(
                  controller: _userEmailCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing * 0.6),
              _label('Phone', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: TextField(
                  controller: _userPhoneCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: spacing * 0.6),
              _label('Login Password', labelFont),
              SizedBox(height: 6),
              SizedBox(
                height: inputHeight,
                child: TextField(
                  controller: _userPasswordCtrl,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              SizedBox(height: spacing),

              Row(
                children: [
                  Checkbox(
                    value: _agreeTerms,
                    onChanged: (v) => setState(() => _agreeTerms = v ?? false),
                  ),
                  Expanded(
                    child: Text(
                      'I agree with terms and conditions',
                      style: TextStyle(fontSize: labelFont),
                    ),
                  ),
                ],
              ),

              SizedBox(height: spacing * 0.6),

              SizedBox(
                width: double.infinity,
                height: buttonHeight,
                child: ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3E2723),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: labelFont * 1.02,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              SizedBox(height: spacing),

              Center(
                child: TextButton(
                  onPressed: () => context.go('/sign_in'),
                  child: Text('Already have an account? Login'),
                ),
              ),

              SizedBox(height: spacing * 1.5),
            ],
          ),
        ),
      ),
    );
  }

  Widget _label(String text, double fontSize) => Text(
    text,
    style: TextStyle(fontSize: fontSize, color: Colors.grey[800]),
  );
}
