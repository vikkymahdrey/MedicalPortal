<%-- 
    Document   : React UI
    Created on : 25 Jan, 2017, 1:00:11 PM
    Author     : Ashok Babu S <ashok@unizentechnologies.com>
    Copyright  : Copyright (C) by Unizen Technologies  
--%>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Medication Home</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
   
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/custom.css" rel="stylesheet">
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    
    
	<script type="text/javascript" src="js/jquery-latest.js"></script>
	 <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
   
    
      <!-- React Application --> 
	<script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>  
	<script src="https://fb.me/react-15.3.0.min.js"></script>
    <script src="https://fb.me/react-dom-15.3.0.min.js"></script>
    <script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>
 
  	<script type="text/babel">

	class Medication extends React.Component{
		constructor() {
       	super();
        this.state = { data: {
  "resourceType": "Bundle",
  "id": "36bbe76b-01b5-4222-bb4f-e49b0644cea7",
  "meta": {
    "lastUpdated": "2017-02-10T00:42:51.918-05:00"
  },
  "type": "searchset",
  "total": 56,
  "link": [
    {
      "relation": "self",
      "url": "http://fhirtest.uhn.ca/baseDstu2/Medication?_format=json&_pretty=true"
    },
    {
      "relation": "next",
      "url": "http://fhirtest.uhn.ca/baseDstu2?_getpages=fbf8c97b-34f8-40e6-8430-e151fd92f892&_getpagesoffset=10&_count=10&_format=json&_pretty=true&_bundletype=searchset"
    }
  ],
  "entry": [
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/2859",
      "resource": {
        "resourceType": "Medication",
        "id": "2859",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2017-01-04T02:01:24.193-05:00"
        },
        "text": {
          "fhir_comments": [
            "  this example includes a compounded medication --This info doesnt belong to Amoxicillin Powder "
          ],
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hydrocortisone 1%, Salicyclic Acid 5% in Glaxal Base</div>"
        },
        "code": {
          "text": "Hydrocortisone 1%, Salicyclic Acid 5% in Glaxal Base"
        },
        "isBrand": false,
        "product": {
          "form": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "255621006",
                "display": "Powder"
              }
            ]
          },
          "ingredient": [
            {
              "item": {
                "display": "Hydrocortisone Powder"
              },
              "amount": {
                "numerator": {
                  "value": 1,
                  "system": "http://unitsofmeasure.org",
                  "code": "g"
                },
                "denominator": {
                  "value": 100,
                  "system": "http://unitsofmeasure.org",
                  "code": "g"
                }
              }
            },
            {
              "item": {
                "display": "Salicyclic Acid"
              },
              "amount": {
                "numerator": {
                  "value": 5,
                  "system": "http://unitsofmeasure.org",
                  "code": "g"
                },
                "denominator": {
                  "value": 100,
                  "system": "http://unitsofmeasure.org",
                  "code": "g"
                }
              }
            },
            {
              "item": {
                "display": "Glaxal Base"
              },
              "amount": {
                "numerator": {
                  "value": 94,
                  "system": "http://unitsofmeasure.org",
                  "code": "g"
                },
                "denominator": {
                  "value": 100,
                  "system": "http://unitsofmeasure.org",
                  "code": "g"
                }
              }
            }
          ]
        }
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/6844",
      "resource": {
        "resourceType": "Medication",
        "id": "6844",
        "meta": {
          "versionId": "3",
          "lastUpdated": "2017-01-23T05:30:50.571-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
        }
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/EXf001",
      "resource": {
        "resourceType": "Medication",
        "id": "EXf001",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2016-12-28T21:44:18.871-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                  <p>\n                     <b>Generated Narrative with Details</b>\n                  </p>\n                  <p>\n                     <b>id</b>: f001\n                  </p>\n                  <p>\n                     <b>code</b>: Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler \n                     <span>(Details : {SNOMED CT code '320442002' = '320442002', given as 'Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler'})</span>\n                  </p>\n                  <p>\n                     <b>isBrand</b>: true\n                  </p>\n                  <blockquote>\n                     <p>\n                        <b>product</b>\n                     </p>\n                     <p>\n                        <b>form</b>: Inhaler (qualifier value) \n                        <span>(Details : {SNOMED CT code '420317006' = '420317006', given as 'Inhaler (qualifier value)'})</span>\n                     </p>\n                     <h3>Ingredients</h3>\n                     <table>\n                        <tr>\n                           <td>-</td>\n                           <td>\n                              <b>Item</b>\n                           </td>\n                           <td>\n                              <b>Amount</b>\n                           </td>\n                        </tr>\n                        <tr>\n                           <td>*</td>\n                           <td>\n                              <a>Combivent</a>\n                           </td>\n                           <td>100 ml\n                              <span> (Details: http://unitsofmeasure.org code ml = '??')</span>/1\n                           </td>\n                        </tr>\n                     </table>\n                  </blockquote>\n               </div>"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "320442002",
              "display": "Salbutamol+ipratropium bromide 100micrograms/20micrograms inhaler"
            }
          ]
        },
        "isBrand": true,
        "product": {
          "form": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "420317006",
                "display": "Inhaler (qualifier value)"
              }
            ]
          },
          "ingredient": [
            {
              "item": {
                "display": "Combivent"
              },
              "amount": {
                "numerator": {
                  "value": 100,
                  "unit": "ml",
                  "system": "http://unitsofmeasure.org",
                  "code": "ml"
                },
                "denominator": {
                  "value": 1
                }
              }
            }
          ]
        }
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/EXf002",
      "resource": {
        "resourceType": "Medication",
        "id": "EXf002",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2016-12-28T21:44:18.871-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                  <p>\n                     <b>Generated Narrative with Details</b>\n                  </p>\n                  <p>\n                     <b>id</b>: f002\n                  </p>\n                  <p>\n                     <b>code</b>: Rosuvastatin 10mg tablet \n                     <span>(Details : {SNOMED CT code '408036003' = '408036003', given as 'Rosuvastatin 10mg tablet'})</span>\n                  </p>\n                  <p>\n                     <b>isBrand</b>: true\n                  </p>\n                  <h3>Packages</h3>\n                  <table>\n                     <tr>\n                        <td>-</td>\n                        <td>\n                           <b>Container</b>\n                        </td>\n                     </tr>\n                     <tr>\n                        <td>*</td>\n                        <td>drug container \n                           <span>(Details : {SNOMED CT code '398124009' = '398124009', given as 'drug container'})</span>\n                        </td>\n                     </tr>\n                  </table>\n               </div>"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "408036003",
              "display": "Rosuvastatin 10mg tablet"
            }
          ]
        },
        "isBrand": true,
        "package": {
          "container": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "398124009",
                "display": "drug container"
              }
            ]
          }
        }
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/EXf003",
      "resource": {
        "resourceType": "Medication",
        "id": "EXf003",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2016-12-28T21:44:18.871-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                  <p>\n                     <b>Generated Narrative with Details</b>\n                  </p>\n                  <p>\n                     <b>id</b>: f003\n                  </p>\n                  <p>\n                     <b>code</b>: Tolbutamide 500mg tablet \n                     <span>(Details : {SNOMED CT code '325267004' = '325267004', given as 'Tolbutamide 500mg tablet'})</span>\n                  </p>\n                  <p>\n                     <b>isBrand</b>: true\n                  </p>\n                  <h3>Packages</h3>\n                  <table>\n                     <tr>\n                        <td>-</td>\n                        <td>\n                           <b>Container</b>\n                        </td>\n                     </tr>\n                     <tr>\n                        <td>*</td>\n                        <td>drug container \n                           <span>(Details : {SNOMED CT code '398124009' = '398124009', given as 'drug container'})</span>\n                        </td>\n                     </tr>\n                  </table>\n               </div>"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "325267004",
              "display": "Tolbutamide 500mg tablet"
            }
          ]
        },
        "isBrand": true,
        "package": {
          "container": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "398124009",
                "display": "drug container"
              }
            ]
          }
        }
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/EXf004",
      "resource": {
        "resourceType": "Medication",
        "id": "EXf004",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2016-12-28T21:44:18.871-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                  <p>\n                     <b>Generated Narrative with Details</b>\n                  </p>\n                  <p>\n                     <b>id</b>: f004\n                  </p>\n                  <p>\n                     <b>code</b>: Metoprolol tartrate 50mg tablet \n                     <span>(Details : {SNOMED CT code '318475005' = '318475005', given as 'Metoprolol tartrate 50mg tablet'})</span>\n                  </p>\n                  <p>\n                     <b>isBrand</b>: true\n                  </p>\n                  <h3>Packages</h3>\n                  <table>\n                     <tr>\n                        <td>-</td>\n                        <td>\n                           <b>Container</b>\n                        </td>\n                     </tr>\n                     <tr>\n                        <td>*</td>\n                        <td>drug container \n                           <span>(Details : {SNOMED CT code '398124009' = '398124009', given as 'drug container'})</span>\n                        </td>\n                     </tr>\n                  </table>\n               </div>"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "318475005",
              "display": "Metoprolol tartrate 50mg tablet"
            }
          ]
        },
        "isBrand": true,
        "package": {
          "container": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "398124009",
                "display": "drug container"
              }
            ]
          }
        }
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/EXf005",
      "resource": {
        "resourceType": "Medication",
        "id": "EXf005",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2016-12-28T21:44:18.871-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                  <p>\n                     <b>Generated Narrative with Details</b>\n                  </p>\n                  <p>\n                     <b>id</b>: f005\n                  </p>\n                  <p>\n                     <b>code</b>: Enalapril maleate 5mg tablet \n                     <span>(Details : {SNOMED CT code '318851002' = '318851002', given as 'Enalapril maleate 5mg tablet'})</span>\n                  </p>\n                  <p>\n                     <b>isBrand</b>: true\n                  </p>\n                  <h3>Packages</h3>\n                  <table>\n                     <tr>\n                        <td>-</td>\n                        <td>\n                           <b>Container</b>\n                        </td>\n                     </tr>\n                     <tr>\n                        <td>*</td>\n                        <td>drug container \n                           <span>(Details : {SNOMED CT code '398124009' = '398124009', given as 'drug container'})</span>\n                        </td>\n                     </tr>\n                  </table>\n               </div>"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "318851002",
              "display": "Enalapril maleate 5mg tablet"
            }
          ]
        },
        "isBrand": true,
        "package": {
          "container": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "398124009",
                "display": "drug container"
              }
            ]
          }
        }
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/EXf201",
      "resource": {
        "resourceType": "Medication",
        "id": "EXf201",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2016-12-28T21:44:18.871-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                  <p>\n                     <b>Generated Narrative with Details</b>\n                  </p>\n                  <p>\n                     <b>id</b>: f201\n                  </p>\n                  <p>\n                     <b>code</b>: 25ug Flutacisone + 250ug Salmeterol \n                     <span>(Details : {SNOMED CT code '411106009' = '411106009', given as '25ug Flutacisone + 250ug Salmeterol'})</span>\n                  </p>\n                  <p>\n                     <b>isBrand</b>: false\n                  </p>\n                  <blockquote>\n                     <p>\n                        <b>product</b>\n                     </p>\n                     <p>\n                        <b>form</b>: Aerosol spray \n                        <span>(Details : {SNOMED CT code '421606006' = '421606006', given as 'Aerosol spray'})</span>\n                     </p>\n                     <blockquote>\n                        <p>\n                           <b>ingredient</b>\n                        </p>\n                        <p>\n                           <b>item</b>: flutacisone\n                        </p>\n                        <p>\n                           <b>amount</b>: 25 ug\n                           <span> (Details: http://unitsofmeasure.org code ug = '??')</span>/1 PUFF\n                           <span> (Details: http://hl7.org/fhir/v3/orderableDrugForm code PUFF = 'Puff')</span>\n                        </p>\n                     </blockquote>\n                     <blockquote>\n                        <p>\n                           <b>ingredient</b>\n                        </p>\n                        <p>\n                           <b>item</b>: salmeterol\n                        </p>\n                        <p>\n                           <b>amount</b>: 250 ug\n                           <span> (Details: http://unitsofmeasure.org code ug = '??')</span>/1 PUFF\n                           <span> (Details: http://hl7.org/fhir/v3/orderableDrugForm code PUFF = 'Puff')</span>\n                        </p>\n                     </blockquote>\n                  </blockquote>\n               </div>"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "411106009",
              "display": "25ug Flutacisone + 250ug Salmeterol"
            }
          ]
        },
        "isBrand": false,
        "product": {
          "form": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "421606006",
                "display": "Aerosol spray"
              }
            ]
          },
          "ingredient": [
            {
              "item": {
                "display": "flutacisone"
              },
              "amount": {
                "numerator": {
                  "value": 25,
                  "system": "http://unitsofmeasure.org",
                  "code": "ug"
                },
                "denominator": {
                  "value": 1,
                  "system": "http://hl7.org/fhir/v3/orderableDrugForm",
                  "code": "PUFF"
                }
              }
            },
            {
              "item": {
                "display": "salmeterol"
              },
              "amount": {
                "numerator": {
                  "value": 250,
                  "system": "http://unitsofmeasure.org",
                  "code": "ug"
                },
                "denominator": {
                  "value": 1,
                  "system": "http://hl7.org/fhir/v3/orderableDrugForm",
                  "code": "PUFF"
                }
              }
            }
          ]
        }
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/EXf202",
      "resource": {
        "resourceType": "Medication",
        "id": "EXf202",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2016-12-28T21:44:18.871-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                  <p>\n                     <b>Generated Narrative with Details</b>\n                  </p>\n                  <p>\n                     <b>id</b>: f202\n                  </p>\n                  <p>\n                     <b>code</b>: Flucloxacillin \n                     <span>(Details : {SNOMED CT code '387544009' = '387544009', given as 'Flucloxacillin'})</span>\n                  </p>\n                  <p>\n                     <b>isBrand</b>: false\n                  </p>\n                  <h3>Products</h3>\n                  <table>\n                     <tr>\n                        <td>-</td>\n                        <td>\n                           <b>Form</b>\n                        </td>\n                     </tr>\n                     <tr>\n                        <td>*</td>\n                        <td>Injection \n                           <span>(Details : {SNOMED CT code '385218009' = '385218009', given as 'Injection'})</span>\n                        </td>\n                     </tr>\n                  </table>\n               </div>"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "387544009",
              "display": "Flucloxacillin"
            }
          ]
        },
        "isBrand": false,
        "product": {
          "form": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "385218009",
                "display": "Injection"
              }
            ]
          }
        }
      },
      "search": {
        "mode": "match"
      }
    },
    {
      "fullUrl": "http://fhirtest.uhn.ca/baseDstu2/Medication/EXf203",
      "resource": {
        "resourceType": "Medication",
        "id": "EXf203",
        "meta": {
          "versionId": "1",
          "lastUpdated": "2016-12-28T21:44:18.871-05:00"
        },
        "text": {
          "status": "generated",
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">\n                  <p>\n                     <b>Generated Narrative with Details</b>\n                  </p>\n                  <p>\n                     <b>id</b>: f203\n                  </p>\n                  <p>\n                     <b>code</b>: Paracetamol \n                     <span>(Details : {SNOMED CT code '387517004' = '387517004', given as 'Paracetamol'})</span>\n                  </p>\n                  <p>\n                     <b>isBrand</b>: false\n                  </p>\n                  <h3>Products</h3>\n                  <table>\n                     <tr>\n                        <td>-</td>\n                        <td>\n                           <b>Form</b>\n                        </td>\n                     </tr>\n                     <tr>\n                        <td>*</td>\n                        <td>Tablet \n                           <span>(Details : {SNOMED CT code '385055001' = '385055001', given as 'Tablet'})</span>\n                        </td>\n                     </tr>\n                  </table>\n               </div>"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "387517004",
              "display": "Paracetamol"
            }
          ]
        },
        "isBrand": false,
        "product": {
          "form": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "385055001",
                "display": "Tablet"
              }
            ]
          }
        }
      },
      "search": {
        "mode": "match"
      }
    }
  ]
} };
 		};

componentWillMount(){
alert("hello");
 fetch('http://fhirtest.uhn.ca/baseDstu2/Medication?_format=json&_pretty=true', { 
	    method: 'GET',
		headers: {'Content-Type': 'application/json'}
        }).then(function(response) {
				alert("hi");
				console.log(response.headers.get('Content-Type'));
 				console.log(response.status);
 				console.log(response.statusText);
				   return response.json();
      }).then( (json) => {
			this.setState({data: json});
        }).then(function(body) {
		     console.log(body);
				//alert(eval(JSON.stringify(body)));
				//alert(JSON.parse(JSON.stringify(body)));
		return body;
      }).catch(function(ex) {
    	     console.log('parsing failed', ex);
  	  });

};

  	render() {
    return (
        

		<div className="container-fluid" >
		<div className="row">
				<div className="col-sm-12 ">
			<nav className="navbar navbar-inverse">
				<div className="navbar-header">
	  				<a href="adminView1"><img src="images/medical_trial.png"></img></a>
    			</div>

    <ul className="nav navbar-nav">
      <li><a href="adminView1"><b>Home</b></a></li>
      <li className="dropdown"><a className="dropdown-toggle" data-toggle="dropdown" href="#"><b>Medical Reports</b><span class="caret"></span></a>
        <ul className="dropdown-menu">
          <li><a href="getAllergy"><span className="glyphicon glyphicon-send"><b>&nbsp;Allergies</b></span></a></li>
          <li><a href="#" ><span className="glyphicon glyphicon-send"><b>&nbsp;Medications</b></span></a></li>
        </ul>
      </li>
      
	</ul>
	 <ul className="nav navbar-nav navbar-right">
       <li><a href="#"><span className="glyphicon glyphicon-user"></span><b> Welcome Medical Team</b></a></li>
       <li className="logout"><a href="logout"><span className="glyphicon glyphicon-log-in"></span><b>Logout</b></a></li>
	</ul>
	</nav>


	</div>
	</div>

				<div className="row " >
							<div className="col-sm-12">
 								<table className="table table-striped">
									<thead>
										<tr>
											<th>FullUrl</th>
											<th>ID</th>
											<th>ResourceType</th>
											<th>VersionID</th>
											<th>SearchMode</th>
											<th>LastUpdated</th>
											
											
        									
      			    					</tr>
    								</thead>
              				  			<tbody>	
									
									<tr>
										
										<td>{this.state.data.entry.map(function(entries, i) {
    											  return <p key={'entries-'+ i}>{entries.fullUrl}</p>
    										})}
										</td>		
										<td>{this.state.data.entry.map(function(entries, i) {
    											  return <p key={'entries-'+ i}>{entries.resource.id}</p>
    										})}
										</td>
										<td>{this.state.data.entry.map(function(entries, i) {
    											  return <p key={'entries-'+ i}>{entries.resource.resourceType}</p>
    										})}
										</td>
			
										<td>{this.state.data.entry.map(function(entries, i) {
    											  return <p key={'entries-'+ i}>{entries.resource.meta.versionId}</p>
    										})}
										</td>	
										<td>{this.state.data.entry.map(function(entries, i) {
    											  return <p key={'entries-'+ i}>{entries.search.mode}</p>
    										})}
										</td>
										<td>{this.state.data.entry.map(function(entries, i) {
    											  return <p key={'entries-'+ i}>{entries.resource.meta.lastUpdated}</p>
    										})}
										</td>
											
																			
									</tr>
									
									
                  						</tbody>
            					</table>
							</div>
				</div>
<Footer/>
</div>
	);
   }
};
			


class Footer extends React.Component{
  	render() {
    return (
 		<div className="footer-wrap">
					
					<div className="row">
					<div className="col-sm-12 text-center">
							 <p className="text-12"><b>All Content © 2017 Unizen technologies, Inc.</b></p>
 					</div>
					</div>
					
		</div>
);
 	 }
	
};
	

ReactDOM.render(
  <Medication />,
  document.getElementById('medicationApp')
);


	</script>    

  </head>
  
  <body>
  		
	<div id="medicationApp"></div>						 

  </body>
</html>