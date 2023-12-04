class Cities {
  late bool isSelected;
  late final String city;
  late final String country;
  late final bool isDefault;

  Cities({
    required this.isSelected,
    required this.city,
    required this.country,
    required this.isDefault,
  });

  static List<Cities> citiesList = [
    Cities(
      isSelected: false,
      city: 'Londan',
      country: 'United Kindgom',
      isDefault: true,
    ),
    Cities(
      isSelected: false,
      city: 'Delhi',
      country: 'India',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Chennai',
      country: 'India',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Kolkatha',
      country: 'India',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Tokiyo',
      country: 'Japan',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Newyork',
      country: 'USA',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'miami',
      country: 'USA',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'vienna',
      country: 'Austria',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'paris',
      country: 'France',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Barcelona',
      country: 'Spain',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Berlin',
      country: 'Germany',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Torondo',
      country: 'Canada',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Nairobi',
      country: 'Kenya',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Kolambo',
      country: 'Sri Lanka',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Katmandu',
      country: 'Nepal',
      isDefault: false,
    ),
    Cities(
      isSelected: false,
      city: 'Beijing',
      country: 'China',
      isDefault: false,
    ),
  ];

static List<Cities> getSelectedCities(){
  List<Cities> selectedCities =Cities.citiesList;
  return selectedCities
  .where((city) => city.isSelected ==true)
  .toList();
  
}

}
