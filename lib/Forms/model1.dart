
class NGO {
  String name;
  List<String> categories;
  String headquarters;

  NGO({
    required this.name,
    required this.categories,
    required this.headquarters,
  });
}

final List<NGO> ngos = [
  NGO(name: 'World Vision India', categories: ['Education', 'Children', 'Community Development', 'Sanitation', 'Emergency Relief'], headquarters: 'Chennai'),
  NGO(name: 'Akshaya Patra Foundation', categories: ['Children'], headquarters: 'Bangalore'),
  NGO(name: 'Butterflies India', categories: ['Children', 'Human Rights'], headquarters: 'New Delhi'),
  NGO(name: 'Child In Need Institute', categories: ['Children', 'Education'], headquarters: 'Kolkata'),
  NGO(name: 'SaveLIFE Foundation', categories: ['Road safety', 'Emergency medical care'], headquarters: 'New Delhi'),
  NGO(name: 'Goonj', categories: ['Community Development', 'Humanitarian Aids'], headquarters: 'New Delhi'),
  NGO(name: 'HelpAge India', categories: ['Community Development', 'Elderly'], headquarters: 'New Delhi'),
  NGO(name: 'Katha', categories: ['Children', 'Education'], headquarters: 'Chennai'),
  NGO(name: 'Narayan Seva Sansthan', categories: ['Children', 'Disabled'], headquarters: 'Udaipur'),
  NGO(name: 'Pratham', categories: ['Children', 'Education'], headquarters: 'Mumbai'),
  NGO(name: 'Seva Mandir', categories: ['Rural and Community Development'], headquarters: 'Rajasthan'),
  NGO(name: 'Smile Foundation', categories: ['Health', 'Education', 'Livelihood', 'Women Empowerment'], headquarters: 'New Delhi'),
  NGO(name: 'Teach For India', categories: ['Education', 'Youth'], headquarters: 'Mumbai'),
  NGO(name: 'Magic Bus', categories: ['Children', 'Education', 'Sports'], headquarters: 'Mumbai'),
  NGO(name: 'SNEHA (Society for Nutrition, Education & Health Action)', categories: ['Health', 'Women Empowerment'], headquarters: 'Mumbai'),
  NGO(name: 'Barefoot College', categories: ['Rural Development', 'Education', 'Women Empowerment'], headquarters: 'Rajasthan'),
  NGO(name: 'Sulabh International', categories: ['Sanitation', 'Rural Development'], headquarters: 'New Delhi'),
];
