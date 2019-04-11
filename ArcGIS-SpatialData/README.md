# SPATIAL INFORMATION FOR KERN REGION

The spatial information of Kern region is in Dropbox in two folders:
- [water districts](https://www.dropbox.com/sh/o2lp19fo7m9ay65/AACUj6Z9_7vOKEEYedvttl98a?dl=0)
- [land use](https://www.dropbox.com/sh/xmrorumnkqn1k3k/AAB5M8CpiXB550peBL99r4xsa?dl=0)


# WATER DISTRICTS

The folder “water_districts” contains three groups of water districts: “kern_water_district_adjust”, “friant_kern_county_contractors”, and “other_districts”.

The most relevant attributes for each shapefile are: “AGENCYNAME” (Name of the water district) and “District” (a code assigned by the UC Merced team).

The code for each district is shown below.


| District | CVPM |                   AGENCYNAME                    |
|----------|------|-------------------------------------------------|
| D02      | 21A  | Kern Delta Water District                       |
| D03      | 21C  | Wheeler Ridge - Maricopa Water Storage District |
| D04      | 19A  | West Kern Water District                        |
| D01      | 19A  | Belridge Water Storage District                 |
| D05      | 19A  | Berrenda Mesa Water District                    |
| D06      | 19B  | Semitropic Water Service District               |
| D07      | 21A  | Rosedale - Rio Bravo Water Storage District     |
| D08      | 19B  | Buena Vista Water Storage District              |
| D09      | 20   | Cawelo Water District                           |
| D10      | 21A  | Henry Miller Water District                     |
| D11      | 19A  | Lost Hills Water District                       |
| fk13     | 18   | Tulare Irrigation District                      |
| fk08     | 18   | Saucelito Irrigation District                   |
| fk01     | 18   | Delano - Earlimart Irrigation District          |
| fk06     | 18   | Lower Tule River Irrigation District            |
| fk03     | 20   | Kern - Tulare Water District                    |
| fk05     | 18   | Lindsay - Strathmore Irrigation District        |
| fk02     | 18   | Exeter Irrigation District                      |
| fk04     | 18   | Lindmore Irrigation District                    |
| fk07     | 18   | Porterville Irrigation District                 |
| fk11     | 18   | Tea Pot Dome Water District                     |
| fk14     | 18   | Vandalia Irrigation District                    |
| fk12     | 18   | Terra Bella Irrigation District                 |
| fk10     | 20   | Southern San Joaquin Municipal Utility District |
| fk09     | 20   | Shafter - Wasco Irrigation District             |
| ot2      | 20   | North Kern Water Storage District               |
| ot3      | 20   | Olcese Water District                           |
| ot1      | 15B  | Dudley Ridge Water District                     |


# LAND USE

The land use for kern region has been divided in two folders: “2011_2015” and “2014”.

- The “2011_2015” folder contains the crop polygons for four years: 2011, 2012, 2013 and 2015. The most relevant attributes are: “COMM” (commodity names), “ACRES” (area in acres reported by the Kern County Department of Agriculture and Measurement Standards) and “acres_jv” (area calculated by the UC Merced team).

- The folder “2014” only has the crop polygons for the year 2014. The most relevant attributes are: “Crop2014” (commodity names), “Acres” (area in acres reported by Land IQ to DWR) and “acres_jv” (area calculated by the UC Merced team).

The GAMS code for each crop is:

|                   Crop                   | GAMS code |
|------------------------------------------|-----------|
| ALFALFA                                  | ALFAL     |
| Alfalfa and Alfalfa Mixtures             | ALFAL     |
| ALFALFA SEED                             | ALFAL     |
| ALMOND                                   | ALPIS     |
| Almonds                                  | ALPIS     |
| APPLE                                    | ORCHD     |
| Apples                                   | COTTN     |
| APRICOT                                  | ORCHD     |
| ARRUGULA                                 | OTHTRK    |
| ARTICHOKE                                | OTHTRK    |
| ARUGULA                                  | OTHTRK    |
| ASIAN PEAR                               | ORCHD     |
| ASPARAGUS                                | OTHTRK    |
| AVOCADO                                  | SUBTRP    |
| Avocados                                 | ALPIS     |
| BARLEY                                   | GRAIN     |
| BARLEY FOR/FOD                           | GRAIN     |
| BARLEY SEED                              | GRAIN     |
| BEAN DRIED                               | DRYBN     |
| BEAN SUCCULENT                           | DRYBN     |
| Beans (Dry)                              | ORCHD     |
| BEET                                     | OTHTRK    |
| BEETS RED                                | OTHTRK    |
| BLACKBERRY                               | OTHTRK    |
| BLUEBERRY                                | OTHTRK    |
| BOK CHOY LSE LF                          | N/A       |
| BOYSENBERRY                              | OTHTRK    |
| BROCCOLI                                 | OTHTRK    |
| BROCCOLI SEED                            | OTHTRK    |
| BRUSSEL SPROUT                           | OTHTRK    |
| Bush Berries                             | OTHTRK    |
| CABBAGE                                  | OTHTRK    |
| CABBAGE SEED                             | OTHTRK    |
| CACTUS LEAF                              | OTHTRK    |
| CACTUS PEAR                              | OTHTRK    |
| CANTALOUPE                               | CUCUR     |
| CARROT                                   | OTHTRK    |
| CARROT SEED                              | GRAIN     |
| Carrots                                  | OTHFLD    |
| CASHEW                                   | ORCHD     |
| CAULIFLOWER                              | OTHTRK    |
| CAULIFLOWR SEED                          | OTHTRK    |
| CELERIAC                                 | ONGAR     |
| CELERY                                   | OTHTRK    |
| CELERY SEED                              | GRAIN     |
| Cherries                                 | ORCHD     |
| CHERRY                                   | ORCHD     |
| CHESTNUT                                 | ORCHD     |
| CHINESE GREEN                            | CUCUR     |
| CHIVE                                    | OTHTRK    |
| CILANTRO                                 | OTHTRK    |
| CITRUS                                   | SUBTRP    |
| Cole Crops                               | OTHTRK    |
| COLLARD                                  | OTHTRK    |
| CORN FOR/FOD                             | CORN      |
| CORN GRAIN                               | CORN      |
| CORN HUMAN CON                           | CORN      |
| Corn Sorghum and Sudan                   | CORN      |
| CORN SWEET                               | CORN      |
| COTTON                                   | COTTN     |
| COTTON FOR/FOD                           | COTTN     |
| CUCUMBER                                 | CUCUR     |
| DAIKON                                   | OTHTRK    |
| DANDELION GREEN                          | N/A       |
| DILL                                     | OTHTRK    |
| EGGPLANT                                 | OTHTRK    |
| FAVA BEAN                                | GRAIN     |
| FENNEL                                   | OTHTRK    |
| FIG                                      | SUBTRP    |
| Flowers Nursery and Christmas Tree Farms | N/A       |
| FORAGE HAY/SLGE                          | ALFAL     |
| FOREST TMBRLND                           | N/A       |
| FRUIT BERRY                              | ORCHD     |
| GAI CHOY LSE LF                          | N/A       |
| GAI LON TGHT HD                          | N/A       |
| GARBANZO BEAN                            | DRYBN     |
| GARLIC                                   | ONGAR     |
| GOURD                                    | CUCUR     |
| GRAPE                                    | VINE      |
| GRAPE RAISIN                             | VINE      |
| GRAPE WINE                               | VINE      |
| GRAPEFRUIT                               | SUBTRP    |
| Grapes                                   | VINE      |
| HERB SPICE                               | N/A       |
| HONEYDEW MELON                           | CUCUR     |
| Idle                                     | N/A       |
| JUJUBE                                   | OTHDEC    |
| KALE                                     | OTHTRK    |
| KIWI                                     | SUBTRP    |
| Kiwis                                    | SUBTRP    |
| KOHLRABI                                 | OTHTRK    |
| KUMQUAT                                  | N/A       |
| LEEK                                     | OTHTRK    |
| LEMON                                    | SUBTRP    |
| LETTUCE HEAD                             | OTHTRK    |
| LETTUCE HEAD SD                          | OTHTRK    |
| LETTUCE LEAF                             | OTHTRK    |
| LETTUCE LEAF SD                          | OTHTRK    |
| LETTUCE ROMAINE                          | OTHTRK    |
| Lettuce/Leafy Greens                     | OTHTRK    |
| LOVEGRASS (FORA                          | OTHFLD    |
| Managed Wetland                          | N/A       |
| MELON                                    | CUCUR     |
| Melons Squash and Cucumbers              | CUCUR     |
| Miscellaneous Deciduous                  | N/A       |
| Miscellaneous Grain and Hay              | N/A       |
| Miscellaneous Grasses                    | N/A       |
| Miscellaneous Truck Crops                | OTHTRK    |
| Mixed Pasture                            | PASTR     |
| MUSK MELON                               | CUCUR     |
| MUSTARD                                  | OTHTRK    |
| MUSTARD GREENS                           | OTHTRK    |
| NAPA CBG TGHT H                          | OTHTRK    |
| NECTARINE                                | ORCHD     |
| N-GRNHS PLANT                            | N/A       |
| N-OUTDR PLANTS                           | N/A       |
| OAT                                      | GRAIN     |
| OAT FOR/FOD                              | N/A       |
| OF-BULB                                  | N/A       |
| OILSEED                                  | N/A       |
| OKRA                                     | N/A       |
| OLIVE                                    | SUBTRP    |
| Olives                                   | SUBTRP    |
| ONION DRY ETC                            | ONGAR     |
| ONION GR SEED                            | ONGAR     |
| ONION GREEN                              | ONGAR     |
| ONION SEED                               | ONGAR     |
| Onions and Garlic                        | ONGAR     |
| OP-CHRSTMS TREE                          | N/A       |
| OP-DEC. SHRUB                            | ORCHD     |
| OP-DEC. TREE                             | ORCHD     |
| OP-FLOWER SEED                           | N/A       |
| OP-FLWRNG PLANT                          | N/A       |
| OP-PALM                                  | N/A       |
| OP-ROSE                                  | N/A       |
| OP-VINE                                  | VINE      |
| ORANGE                                   | SUBTRP    |
| OT-CONIFER                               | N/A       |
| OT-DEC. TREE                             | N/A       |
| PAPAYA                                   | SUBTRP    |
| PARSLEY                                  | OTHTRK    |
| PARSLEY SEED                             | GRAIN     |
| PARSNIP                                  | OTHTRK    |
| PASTURELAND                              | PASTR     |
| PEACH                                    | ORCHD     |
| Peaches/Nectarines                       | ORCHD     |
| PEAR                                     | ORCHD     |
| Pears                                    | ORCHD     |
| PEAS                                     | DRYBN     |
| PEAS SEED                                | GRAIN     |
| PECAN                                    | ORCHD     |
| PEPPER FRUITNG                           | OTHTRK    |
| PEPPER SPICE                             | OTHTRK    |
| Peppers                                  | OTHTRK    |
| PERSIMMON                                | ORCHD     |
| PISTACHIO                                | ALPIS     |
| Pistachios                               | ALPIS     |
| PLUM                                     | ORCHD     |
| Plums Prunes and Apricots                | ORCHD     |
| POMEGRANATE                              | ORCHD     |
| Pomegranates                             | ORCHD     |
| POMELO                                   | ORCHD     |
| POTATO                                   | POTATO    |
| Potatoes and Sweet Potatoes              | POTATO    |
| PRUNE                                    | ORCHD     |
| PUMPKIN                                  | OTHTRK    |
| QUINCE                                   | ORCHD     |
| RADISH                                   | OTHTRK    |
| RADISH SEED                              | GRAIN     |
| RANGELAND                                | PASTR     |
| RAPE                                     | OTHFLD    |
| RUTABAGA                                 | OTHTRK    |
| RYE                                      | GRAIN     |
| RYEGRAS FOR/FOD                          | OTHFLD    |
| SAFFLOWER                                | SAFLR     |
| SHALLOT                                  | ONGAR     |
| SORGHUM FOR/FOD                          | GRAIN     |
| SORGHUM MILO                             | GRAIN     |
| SORGHUM SEED                             | GRAIN     |
| SPINACH                                  | OTHTRK    |
| SQUASH                                   | CUCUR     |
| SQUASH SUMMER                            | CUCUR     |
| SQUASH WINTER                            | CUCUR     |
| STONE FRUIT                              | N/A       |
| Strawberries                             | OTHFLD    |
| STRAWBERRY                               | OTHFLD    |
| SUDANGRASS                               | OTHFLD    |
| SUGARBEET                                | SBEET     |
| SUGARCANE                                | N/A       |
| SUNFLOWER                                | N/A       |
| SUNFLOWER SEED                           | GRAIN     |
| SWEET BASIL                              | N/A       |
| SWEET POTATO                             | POTATO    |
| SWISS CHARD                              | OTHTRK    |
| TANGELO                                  | SUBTRP    |
| TANGERINE                                | SUBTRP    |
| TANGERINE/SDLS                           | SUBTRP    |
| TOMATILLO                                | FRTOM     |
| TOMATO                                   | FRTOM     |
| TOMATO PROCESS                           | PRTOM     |
| TOMATO SEED                              | FRTOM     |
| Tomatoes                                 | FRTOM     |
| TRITICALE                                | GRAIN     |
| TURF/SOD                                 | N/A       |
| TURNIP                                   | OTHTRK    |
| UNCUL NON-AG                             | N/A       |
| UNCULTIVATED AG                          | N/A       |
| Urban                                    | N/A       |
| VEGETABLE                                | N/A       |
| VETCH                                    | OTHTRK    |
| WALNUT                                   | ORCHD     |
| Walnuts                                  | ORCHD     |
| WATERMELON                               | OTHTRK    |
| WHEAT                                    | GRAIN     |
| WHEAT FOR/FOD                            | GRAIN     |
| WHEAT SEED                               | GRAIN     |
| YAM                                      | OTHTRK    |
| Young Perennials                         | N/A       |
| ZUCCHINI                                 | CUCUR     |
