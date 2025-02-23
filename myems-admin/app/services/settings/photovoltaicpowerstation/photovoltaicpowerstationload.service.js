'use strict';
app.factory('PhotovoltaicPowerStationLoadService', function($http) {
    return {
        getAllPhotovoltaicPowerStationLoads: function(headers, callback) {
            $http.get(getAPI()+'photovoltaicpowerstationloads', {headers})
            .then(function (response) {
                callback(response);
            }, function (response) {
                callback(response);
            });
        },
        getPhotovoltaicPowerStationLoadsByPhotovoltaicPowerStationID: function(id, headers, callback) {
            $http.get(getAPI()+'photovoltaicpowerstations/'+id+'/loads', {headers})
            .then(function (response) {
                callback(response);
            }, function (response) {
                callback(response);
            });
        },
        addPhotovoltaicPowerStationLoad: function(id, photovoltaicpowerstationload, headers, callback) {
            $http.post(getAPI()+'photovoltaicpowerstations/'+id+'/loads',{data:photovoltaicpowerstationload}, {headers})
            .then(function (response) {
                callback(response);
            }, function (response) {
                callback(response);
            });
        },
        editPhotovoltaicPowerStationLoad: function(id, photovoltaicpowerstationload, headers, callback) {
            $http.put(getAPI()+'photovoltaicpowerstations/'+id+'/loads/'+photovoltaicpowerstationload.id,{data:photovoltaicpowerstationload}, {headers})
            .then(function (response) {
                callback(response);
            }, function (response) {
                callback(response);
            });
        },
        deletePhotovoltaicPowerStationLoad: function(id, photovoltaicpowerstationloadyID, headers, callback) {
            $http.delete(getAPI()+'photovoltaicpowerstations/'+id+'/loads/'+photovoltaicpowerstationloadyID, {headers})
            .then(function (response) {
                callback(response);
            }, function (response) {
                callback(response);
            });
        },
    };
});
