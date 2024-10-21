// ignore_for_file: unused_import, non_constant_identifier_names

import "package:flutter/material.dart";

import React from 'react';
import { View, Text, StyleSheet, TouchableOpacity, Image } from 'react-native';

var ProfileScreen = () => {
  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Text style={styles.title}>My profile</Text>
        <Image 
          style={styles.profileImage} 
          source={{ uri: 'https://example.com/profile-image.png' }} 
        />
        <Text style={styles.name}>Tayebwa Ricky</Text>
        <Text style={styles.email}>tayebwaricky2020@gmail.com</Text>
      </View>

      <View style={styles.section}>
        <TouchableOpacity style={styles.option}>
          <Text style={styles.optionTitle}>My orders</Text>
          <Text style={styles.optionSubtitle}>You already have 12 orders</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.option}>
          <Text style={styles.optionTitle}>Shipping addresses</Text>
          <Text style={styles.optionSubtitle}>3 addresses</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.option}>
          <Text style={styles.optionTitle}>Promocodes</Text>
          <Text style={styles.optionSubtitle}>You have special promocodes</Text>
        </TouchableOpacity>
        <TouchableOpacity style={styles.option}>
          <Text style={styles.optionTitle}>My reviews</Text>
          <Text style={styles.optionSubtitle}>Reviews for 4 items</Text>
        </TouchableOpacity>
      </View>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#FFF',
    padding: 20,
  },
  header: {
    alignItems: 'center',
    marginBottom: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#003366',
    marginBottom: 10,
  },
  profileImage: {
    width: 60,
    height: 60,
    borderRadius: 30,
    marginBottom: 10,
  },
  name: {
    fontSize: 18,
    fontWeight: '600',
    color: '#333',
  },
  email: {
    fontSize: 14,
    color: '#666',
  },
  section: {
    marginTop: 20,
  },
  option: {
    paddingVertical: 15,
    borderBottomWidth: 1,
    borderBottomColor: '#EEE',
  },
  optionTitle: {
    fontSize: 16,
    fontWeight: '600',
    color: '#000',
  },
  optionSubtitle: {
    fontSize: 14,
    color: '#888',
    marginTop: 5,
  },
});

export default ProfileScreen;
