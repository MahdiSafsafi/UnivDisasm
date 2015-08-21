%macro testcase 2
 %ifdef BIN
  db %1
 %endif
 %ifdef SRC
  %2
 %endif
%endmacro


testcase	{ 0xc4, 0xe2, 0xcd, 0x98, 0xd4                                           }, { vfmadd132pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0x98, 0x11                                           }, { vfmadd132pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x98, 0xd4                                           }, { vfmadd132ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0x98, 0x11                                           }, { vfmadd132ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa8, 0xd4                                           }, { vfmadd213pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa8, 0x11                                           }, { vfmadd213pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa8, 0xd4                                           }, { vfmadd213ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa8, 0x11                                           }, { vfmadd213ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb8, 0xd4                                           }, { vfmadd231pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb8, 0x11                                           }, { vfmadd231pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb8, 0xd4                                           }, { vfmadd231ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb8, 0x11                                           }, { vfmadd231ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x96, 0xd4                                           }, { vfmaddsub132pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0x96, 0x11                                           }, { vfmaddsub132pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0x96, 0xd4                                           }, { vfmaddsub132ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0x96, 0x11                                           }, { vfmaddsub132ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa6, 0xd4                                           }, { vfmaddsub213pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa6, 0x11                                           }, { vfmaddsub213pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa6, 0xd4                                           }, { vfmaddsub213ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa6, 0x11                                           }, { vfmaddsub213ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb6, 0xd4                                           }, { vfmaddsub231pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb6, 0x11                                           }, { vfmaddsub231pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb6, 0xd4                                           }, { vfmaddsub231ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb6, 0x11                                           }, { vfmaddsub231ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0x97, 0xd4                                           }, { vfmsubadd132pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0x97, 0x11                                           }, { vfmsubadd132pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0x97, 0xd4                                           }, { vfmsubadd132ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0x97, 0x11                                           }, { vfmsubadd132ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa7, 0xd4                                           }, { vfmsubadd213pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa7, 0x11                                           }, { vfmsubadd213pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa7, 0xd4                                           }, { vfmsubadd213ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa7, 0x11                                           }, { vfmsubadd213ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb7, 0xd4                                           }, { vfmsubadd231pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb7, 0x11                                           }, { vfmsubadd231pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb7, 0xd4                                           }, { vfmsubadd231ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb7, 0x11                                           }, { vfmsubadd231ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9a, 0xd4                                           }, { vfmsub132pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9a, 0x11                                           }, { vfmsub132pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9a, 0xd4                                           }, { vfmsub132ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9a, 0x11                                           }, { vfmsub132ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaa, 0xd4                                           }, { vfmsub213pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaa, 0x11                                           }, { vfmsub213pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaa, 0xd4                                           }, { vfmsub213ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaa, 0x11                                           }, { vfmsub213ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xba, 0xd4                                           }, { vfmsub231pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xba, 0x11                                           }, { vfmsub231pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xba, 0xd4                                           }, { vfmsub231ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xba, 0x11                                           }, { vfmsub231ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9c, 0xd4                                           }, { vfnmadd132pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9c, 0x11                                           }, { vfnmadd132pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9c, 0xd4                                           }, { vfnmadd132ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9c, 0x11                                           }, { vfnmadd132ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xac, 0xd4                                           }, { vfnmadd213pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xac, 0x11                                           }, { vfnmadd213pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xac, 0xd4                                           }, { vfnmadd213ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xac, 0x11                                           }, { vfnmadd213ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbc, 0xd4                                           }, { vfnmadd231pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbc, 0x11                                           }, { vfnmadd231pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbc, 0xd4                                           }, { vfnmadd231ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbc, 0x11                                           }, { vfnmadd231ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9e, 0xd4                                           }, { vfnmsub132pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9e, 0x11                                           }, { vfnmsub132pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9e, 0xd4                                           }, { vfnmsub132ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9e, 0x11                                           }, { vfnmsub132ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xae, 0xd4                                           }, { vfnmsub213pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xae, 0x11                                           }, { vfnmsub213pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xae, 0xd4                                           }, { vfnmsub213ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xae, 0x11                                           }, { vfnmsub213ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbe, 0xd4                                           }, { vfnmsub231pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbe, 0x11                                           }, { vfnmsub231pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbe, 0xd4                                           }, { vfnmsub231ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbe, 0x11                                           }, { vfnmsub231ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x98, 0xd4                                           }, { vfmadd132pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0x98, 0x39                                           }, { vfmadd132pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x98, 0xd4                                           }, { vfmadd132ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0x98, 0x39                                           }, { vfmadd132ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa8, 0xd4                                           }, { vfmadd213pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa8, 0x39                                           }, { vfmadd213pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xa8, 0xd4                                           }, { vfmadd213ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xa8, 0x39                                           }, { vfmadd213ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb8, 0xd4                                           }, { vfmadd231pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb8, 0x39                                           }, { vfmadd231pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xb8, 0xd4                                           }, { vfmadd231ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xb8, 0x39                                           }, { vfmadd231ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x96, 0xd4                                           }, { vfmaddsub132pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0x96, 0x39                                           }, { vfmaddsub132pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0x96, 0xd4                                           }, { vfmaddsub132ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0x96, 0x39                                           }, { vfmaddsub132ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa6, 0xd4                                           }, { vfmaddsub213pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa6, 0x39                                           }, { vfmaddsub213pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xa6, 0xd4                                           }, { vfmaddsub213ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0xa6, 0x39                                           }, { vfmaddsub213ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb6, 0xd4                                           }, { vfmaddsub231pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb6, 0x39                                           }, { vfmaddsub231pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xb6, 0xd4                                           }, { vfmaddsub231ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0xb6, 0x39                                           }, { vfmaddsub231ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0x97, 0xd4                                           }, { vfmsubadd132pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0x97, 0x39                                           }, { vfmsubadd132pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0x97, 0xd4                                           }, { vfmsubadd132ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0x97, 0x39                                           }, { vfmsubadd132ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa7, 0xd4                                           }, { vfmsubadd213pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa7, 0x39                                           }, { vfmsubadd213pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xa7, 0xd4                                           }, { vfmsubadd213ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0xa7, 0x39                                           }, { vfmsubadd213ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb7, 0xd4                                           }, { vfmsubadd231pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb7, 0x39                                           }, { vfmsubadd231pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xb7, 0xd4                                           }, { vfmsubadd231ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0xb7, 0x39                                           }, { vfmsubadd231ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9a, 0xd4                                           }, { vfmsub132pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9a, 0x39                                           }, { vfmsub132pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x9a, 0xd4                                           }, { vfmsub132ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0x9a, 0x39                                           }, { vfmsub132ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaa, 0xd4                                           }, { vfmsub213pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaa, 0x39                                           }, { vfmsub213pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xaa, 0xd4                                           }, { vfmsub213ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xaa, 0x39                                           }, { vfmsub213ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xba, 0xd4                                           }, { vfmsub231pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xba, 0x39                                           }, { vfmsub231pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xba, 0xd4                                           }, { vfmsub231ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xba, 0x39                                           }, { vfmsub231ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9c, 0xd4                                           }, { vfnmadd132pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9c, 0x39                                           }, { vfnmadd132pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9c, 0xd4                                           }, { vfnmadd132ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0x9c, 0x39                                           }, { vfnmadd132ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xac, 0xd4                                           }, { vfnmadd213pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xac, 0x39                                           }, { vfnmadd213pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xac, 0xd4                                           }, { vfnmadd213ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xac, 0x39                                           }, { vfnmadd213ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbc, 0xd4                                           }, { vfnmadd231pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbc, 0x39                                           }, { vfnmadd231pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbc, 0xd4                                           }, { vfnmadd231ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xbc, 0x39                                           }, { vfnmadd231ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9e, 0xd4                                           }, { vfnmsub132pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9e, 0x39                                           }, { vfnmsub132pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9e, 0xd4                                           }, { vfnmsub132ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0x9e, 0x39                                           }, { vfnmsub132ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xae, 0xd4                                           }, { vfnmsub213pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xae, 0x39                                           }, { vfnmsub213pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xae, 0xd4                                           }, { vfnmsub213ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xae, 0x39                                           }, { vfnmsub213ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbe, 0xd4                                           }, { vfnmsub231pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbe, 0x39                                           }, { vfnmsub231pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbe, 0xd4                                           }, { vfnmsub231ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xbe, 0x39                                           }, { vfnmsub231ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x99, 0xd4                                           }, { vfmadd132sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0x99, 0x11                                           }, { vfmadd132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa9, 0xd4                                           }, { vfmadd213sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa9, 0x11                                           }, { vfmadd213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb9, 0xd4                                           }, { vfmadd231sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb9, 0x11                                           }, { vfmadd231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9b, 0xd4                                           }, { vfmsub132sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9b, 0x11                                           }, { vfmsub132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xab, 0xd4                                           }, { vfmsub213sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xab, 0x11                                           }, { vfmsub213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbb, 0xd4                                           }, { vfmsub231sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbb, 0x11                                           }, { vfmsub231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9d, 0xd4                                           }, { vfnmadd132sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9d, 0x11                                           }, { vfnmadd132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xad, 0xd4                                           }, { vfnmadd213sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xad, 0x11                                           }, { vfnmadd213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbd, 0xd4                                           }, { vfnmadd231sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbd, 0x11                                           }, { vfnmadd231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9f, 0xd4                                           }, { vfnmsub132sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9f, 0x11                                           }, { vfnmsub132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaf, 0xd4                                           }, { vfnmsub213sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaf, 0x11                                           }, { vfnmsub213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbf, 0xd4                                           }, { vfnmsub231sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbf, 0x11                                           }, { vfnmsub231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x99, 0xd4                                           }, { vfmadd132ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0x99, 0x11                                           }, { vfmadd132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xa9, 0xd4                                           }, { vfmadd213ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xa9, 0x11                                           }, { vfmadd213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xb9, 0xd4                                           }, { vfmadd231ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xb9, 0x11                                           }, { vfmadd231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x9b, 0xd4                                           }, { vfmsub132ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0x9b, 0x11                                           }, { vfmsub132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xab, 0xd4                                           }, { vfmsub213ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xab, 0x11                                           }, { vfmsub213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xbb, 0xd4                                           }, { vfmsub231ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xbb, 0x11                                           }, { vfmsub231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x9d, 0xd4                                           }, { vfnmadd132ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0x9d, 0x11                                           }, { vfnmadd132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xad, 0xd4                                           }, { vfnmadd213ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xad, 0x11                                           }, { vfnmadd213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbd, 0xd4                                           }, { vfnmadd231ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xbd, 0x11                                           }, { vfnmadd231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9f, 0xd4                                           }, { vfnmsub132ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0x9f, 0x11                                           }, { vfnmsub132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xaf, 0xd4                                           }, { vfnmsub213ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xaf, 0x11                                           }, { vfnmsub213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbf, 0xd4                                           }, { vfnmsub231ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xbf, 0x11                                           }, { vfnmsub231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x98, 0xd4                                           }, { vfmadd132pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0x98, 0x11                                           }, { vfmadd132pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x98, 0x11                                           }, { vfmadd132pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x98, 0xd4                                           }, { vfmadd132ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0x98, 0x11                                           }, { vfmadd132ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x98, 0x11                                           }, { vfmadd132ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa8, 0xd4                                           }, { vfmadd213pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa8, 0x11                                           }, { vfmadd213pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa8, 0x11                                           }, { vfmadd213pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa8, 0xd4                                           }, { vfmadd213ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa8, 0x11                                           }, { vfmadd213ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa8, 0x11                                           }, { vfmadd213ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb8, 0xd4                                           }, { vfmadd231pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb8, 0x11                                           }, { vfmadd231pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb8, 0x11                                           }, { vfmadd231pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb8, 0xd4                                           }, { vfmadd231ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb8, 0x11                                           }, { vfmadd231ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb8, 0x11                                           }, { vfmadd231ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x96, 0xd4                                           }, { vfmaddsub132pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0x96, 0x11                                           }, { vfmaddsub132pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0x96, 0x11                                           }, { vfmaddsub132pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0x96, 0xd4                                           }, { vfmaddsub132ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0x96, 0x11                                           }, { vfmaddsub132ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0x96, 0x11                                           }, { vfmaddsub132ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa6, 0xd4                                           }, { vfmaddsub213pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa6, 0x11                                           }, { vfmaddsub213pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa6, 0x11                                           }, { vfmaddsub213pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa6, 0xd4                                           }, { vfmaddsub213ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa6, 0x11                                           }, { vfmaddsub213ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa6, 0x11                                           }, { vfmaddsub213ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb6, 0xd4                                           }, { vfmaddsub231pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb6, 0x11                                           }, { vfmaddsub231pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb6, 0x11                                           }, { vfmaddsub231pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb6, 0xd4                                           }, { vfmaddsub231ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb6, 0x11                                           }, { vfmaddsub231ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb6, 0x11                                           }, { vfmaddsub231ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0x97, 0xd4                                           }, { vfmsubadd132pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0x97, 0x11                                           }, { vfmsubadd132pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0x97, 0x11                                           }, { vfmsubadd132pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0x97, 0xd4                                           }, { vfmsubadd132ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0x97, 0x11                                           }, { vfmsubadd132ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0x97, 0x11                                           }, { vfmsubadd132ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa7, 0xd4                                           }, { vfmsubadd213pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa7, 0x11                                           }, { vfmsubadd213pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xa7, 0x11                                           }, { vfmsubadd213pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa7, 0xd4                                           }, { vfmsubadd213ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa7, 0x11                                           }, { vfmsubadd213ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xa7, 0x11                                           }, { vfmsubadd213ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb7, 0xd4                                           }, { vfmsubadd231pd ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb7, 0x11                                           }, { vfmsubadd231pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0xb7, 0x11                                           }, { vfmsubadd231pd ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb7, 0xd4                                           }, { vfmsubadd231ps ymm2,ymm6,ymm4                                }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb7, 0x11                                           }, { vfmsubadd231ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x4d, 0xb7, 0x11                                           }, { vfmsubadd231ps ymm2,ymm6,YWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9a, 0xd4                                           }, { vfmsub132pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9a, 0x11                                           }, { vfmsub132pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9a, 0x11                                           }, { vfmsub132pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9a, 0xd4                                           }, { vfmsub132ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9a, 0x11                                           }, { vfmsub132ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9a, 0x11                                           }, { vfmsub132ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaa, 0xd4                                           }, { vfmsub213pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaa, 0x11                                           }, { vfmsub213pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xaa, 0x11                                           }, { vfmsub213pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaa, 0xd4                                           }, { vfmsub213ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaa, 0x11                                           }, { vfmsub213ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xaa, 0x11                                           }, { vfmsub213ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xba, 0xd4                                           }, { vfmsub231pd ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0xcd, 0xba, 0x11                                           }, { vfmsub231pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0xba, 0x11                                           }, { vfmsub231pd ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xba, 0xd4                                           }, { vfmsub231ps ymm2,ymm6,ymm4                                   }
testcase	{ 0xc4, 0xe2, 0x4d, 0xba, 0x11                                           }, { vfmsub231ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x4d, 0xba, 0x11                                           }, { vfmsub231ps ymm2,ymm6,YWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9c, 0xd4                                           }, { vfnmadd132pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9c, 0x11                                           }, { vfnmadd132pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9c, 0x11                                           }, { vfnmadd132pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9c, 0xd4                                           }, { vfnmadd132ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9c, 0x11                                           }, { vfnmadd132ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9c, 0x11                                           }, { vfnmadd132ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xac, 0xd4                                           }, { vfnmadd213pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xac, 0x11                                           }, { vfnmadd213pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xac, 0x11                                           }, { vfnmadd213pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xac, 0xd4                                           }, { vfnmadd213ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xac, 0x11                                           }, { vfnmadd213ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xac, 0x11                                           }, { vfnmadd213ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbc, 0xd4                                           }, { vfnmadd231pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbc, 0x11                                           }, { vfnmadd231pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbc, 0x11                                           }, { vfnmadd231pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbc, 0xd4                                           }, { vfnmadd231ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbc, 0x11                                           }, { vfnmadd231ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbc, 0x11                                           }, { vfnmadd231ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9e, 0xd4                                           }, { vfnmsub132pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9e, 0x11                                           }, { vfnmsub132pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0x9e, 0x11                                           }, { vfnmsub132pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9e, 0xd4                                           }, { vfnmsub132ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9e, 0x11                                           }, { vfnmsub132ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0x9e, 0x11                                           }, { vfnmsub132ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xae, 0xd4                                           }, { vfnmsub213pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xae, 0x11                                           }, { vfnmsub213pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xae, 0x11                                           }, { vfnmsub213pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xae, 0xd4                                           }, { vfnmsub213ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xae, 0x11                                           }, { vfnmsub213ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xae, 0x11                                           }, { vfnmsub213ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbe, 0xd4                                           }, { vfnmsub231pd ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbe, 0x11                                           }, { vfnmsub231pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xcd, 0xbe, 0x11                                           }, { vfnmsub231pd ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbe, 0xd4                                           }, { vfnmsub231ps ymm2,ymm6,ymm4                                  }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbe, 0x11                                           }, { vfnmsub231ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x4d, 0xbe, 0x11                                           }, { vfnmsub231ps ymm2,ymm6,YWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x98, 0xd4                                           }, { vfmadd132pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0x98, 0x39                                           }, { vfmadd132pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x98, 0x39                                           }, { vfmadd132pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x98, 0xd4                                           }, { vfmadd132ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0x98, 0x39                                           }, { vfmadd132ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x98, 0x39                                           }, { vfmadd132ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa8, 0xd4                                           }, { vfmadd213pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa8, 0x39                                           }, { vfmadd213pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa8, 0x39                                           }, { vfmadd213pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xa8, 0xd4                                           }, { vfmadd213ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xa8, 0x39                                           }, { vfmadd213ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xa8, 0x39                                           }, { vfmadd213ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb8, 0xd4                                           }, { vfmadd231pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb8, 0x39                                           }, { vfmadd231pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb8, 0x39                                           }, { vfmadd231pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xb8, 0xd4                                           }, { vfmadd231ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xb8, 0x39                                           }, { vfmadd231ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xb8, 0x39                                           }, { vfmadd231ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x96, 0xd4                                           }, { vfmaddsub132pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0x96, 0x39                                           }, { vfmaddsub132pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0x96, 0x39                                           }, { vfmaddsub132pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0x96, 0xd4                                           }, { vfmaddsub132ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0x96, 0x39                                           }, { vfmaddsub132ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0x96, 0x39                                           }, { vfmaddsub132ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa6, 0xd4                                           }, { vfmaddsub213pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa6, 0x39                                           }, { vfmaddsub213pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa6, 0x39                                           }, { vfmaddsub213pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xa6, 0xd4                                           }, { vfmaddsub213ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0xa6, 0x39                                           }, { vfmaddsub213ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xa6, 0x39                                           }, { vfmaddsub213ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb6, 0xd4                                           }, { vfmaddsub231pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb6, 0x39                                           }, { vfmaddsub231pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb6, 0x39                                           }, { vfmaddsub231pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xb6, 0xd4                                           }, { vfmaddsub231ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0xb6, 0x39                                           }, { vfmaddsub231ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xb6, 0x39                                           }, { vfmaddsub231ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0x97, 0xd4                                           }, { vfmsubadd132pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0x97, 0x39                                           }, { vfmsubadd132pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0x97, 0x39                                           }, { vfmsubadd132pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0x97, 0xd4                                           }, { vfmsubadd132ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0x97, 0x39                                           }, { vfmsubadd132ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0x97, 0x39                                           }, { vfmsubadd132ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa7, 0xd4                                           }, { vfmsubadd213pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa7, 0x39                                           }, { vfmsubadd213pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa7, 0x39                                           }, { vfmsubadd213pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xa7, 0xd4                                           }, { vfmsubadd213ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0xa7, 0x39                                           }, { vfmsubadd213ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xa7, 0x39                                           }, { vfmsubadd213ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb7, 0xd4                                           }, { vfmsubadd231pd xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb7, 0x39                                           }, { vfmsubadd231pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb7, 0x39                                           }, { vfmsubadd231pd xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xb7, 0xd4                                           }, { vfmsubadd231ps xmm2,xmm6,xmm4                                }
testcase	{ 0xc4, 0xe2, 0x49, 0xb7, 0x39                                           }, { vfmsubadd231ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0x49, 0xb7, 0x39                                           }, { vfmsubadd231ps xmm7,xmm6,OWORD [ecx]                         }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9a, 0xd4                                           }, { vfmsub132pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9a, 0x39                                           }, { vfmsub132pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9a, 0x39                                           }, { vfmsub132pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x9a, 0xd4                                           }, { vfmsub132ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0x9a, 0x39                                           }, { vfmsub132ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x9a, 0x39                                           }, { vfmsub132ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaa, 0xd4                                           }, { vfmsub213pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaa, 0x39                                           }, { vfmsub213pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaa, 0x39                                           }, { vfmsub213pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xaa, 0xd4                                           }, { vfmsub213ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xaa, 0x39                                           }, { vfmsub213ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xaa, 0x39                                           }, { vfmsub213ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xba, 0xd4                                           }, { vfmsub231pd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xba, 0x39                                           }, { vfmsub231pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xba, 0x39                                           }, { vfmsub231pd xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xba, 0xd4                                           }, { vfmsub231ps xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xba, 0x39                                           }, { vfmsub231ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xba, 0x39                                           }, { vfmsub231ps xmm7,xmm6,OWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9c, 0xd4                                           }, { vfnmadd132pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9c, 0x39                                           }, { vfnmadd132pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9c, 0x39                                           }, { vfnmadd132pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9c, 0xd4                                           }, { vfnmadd132ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0x9c, 0x39                                           }, { vfnmadd132ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9c, 0x39                                           }, { vfnmadd132ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xac, 0xd4                                           }, { vfnmadd213pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xac, 0x39                                           }, { vfnmadd213pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xac, 0x39                                           }, { vfnmadd213pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xac, 0xd4                                           }, { vfnmadd213ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xac, 0x39                                           }, { vfnmadd213ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xac, 0x39                                           }, { vfnmadd213ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbc, 0xd4                                           }, { vfnmadd231pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbc, 0x39                                           }, { vfnmadd231pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbc, 0x39                                           }, { vfnmadd231pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbc, 0xd4                                           }, { vfnmadd231ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xbc, 0x39                                           }, { vfnmadd231ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbc, 0x39                                           }, { vfnmadd231ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9e, 0xd4                                           }, { vfnmsub132pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9e, 0x39                                           }, { vfnmsub132pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9e, 0x39                                           }, { vfnmsub132pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9e, 0xd4                                           }, { vfnmsub132ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0x9e, 0x39                                           }, { vfnmsub132ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9e, 0x39                                           }, { vfnmsub132ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xae, 0xd4                                           }, { vfnmsub213pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xae, 0x39                                           }, { vfnmsub213pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xae, 0x39                                           }, { vfnmsub213pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xae, 0xd4                                           }, { vfnmsub213ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xae, 0x39                                           }, { vfnmsub213ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xae, 0x39                                           }, { vfnmsub213ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbe, 0xd4                                           }, { vfnmsub231pd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbe, 0x39                                           }, { vfnmsub231pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbe, 0x39                                           }, { vfnmsub231pd xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbe, 0xd4                                           }, { vfnmsub231ps xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xbe, 0x39                                           }, { vfnmsub231ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbe, 0x39                                           }, { vfnmsub231ps xmm7,xmm6,OWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x99, 0xd4                                           }, { vfmadd132sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0x99, 0x11                                           }, { vfmadd132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x99, 0x11                                           }, { vfmadd132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa9, 0xd4                                           }, { vfmadd213sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa9, 0x11                                           }, { vfmadd213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xa9, 0x11                                           }, { vfmadd213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb9, 0xd4                                           }, { vfmadd231sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb9, 0x11                                           }, { vfmadd231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xb9, 0x11                                           }, { vfmadd231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9b, 0xd4                                           }, { vfmsub132sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9b, 0x11                                           }, { vfmsub132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9b, 0x11                                           }, { vfmsub132sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xab, 0xd4                                           }, { vfmsub213sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xab, 0x11                                           }, { vfmsub213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xab, 0x11                                           }, { vfmsub213sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbb, 0xd4                                           }, { vfmsub231sd xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbb, 0x11                                           }, { vfmsub231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbb, 0x11                                           }, { vfmsub231sd xmm2,xmm6,QWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9d, 0xd4                                           }, { vfnmadd132sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9d, 0x11                                           }, { vfnmadd132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9d, 0x11                                           }, { vfnmadd132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xad, 0xd4                                           }, { vfnmadd213sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xad, 0x11                                           }, { vfnmadd213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xad, 0x11                                           }, { vfnmadd213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbd, 0xd4                                           }, { vfnmadd231sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbd, 0x11                                           }, { vfnmadd231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbd, 0x11                                           }, { vfnmadd231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9f, 0xd4                                           }, { vfnmsub132sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9f, 0x11                                           }, { vfnmsub132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0x9f, 0x11                                           }, { vfnmsub132sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaf, 0xd4                                           }, { vfnmsub213sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaf, 0x11                                           }, { vfnmsub213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xaf, 0x11                                           }, { vfnmsub213sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbf, 0xd4                                           }, { vfnmsub231sd xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbf, 0x11                                           }, { vfnmsub231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0xc9, 0xbf, 0x11                                           }, { vfnmsub231sd xmm2,xmm6,QWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x99, 0xd4                                           }, { vfmadd132ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0x99, 0x11                                           }, { vfmadd132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x99, 0x11                                           }, { vfmadd132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xa9, 0xd4                                           }, { vfmadd213ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xa9, 0x11                                           }, { vfmadd213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xa9, 0x11                                           }, { vfmadd213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xb9, 0xd4                                           }, { vfmadd231ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xb9, 0x11                                           }, { vfmadd231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xb9, 0x11                                           }, { vfmadd231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x9b, 0xd4                                           }, { vfmsub132ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0x9b, 0x11                                           }, { vfmsub132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x9b, 0x11                                           }, { vfmsub132ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xab, 0xd4                                           }, { vfmsub213ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xab, 0x11                                           }, { vfmsub213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xab, 0x11                                           }, { vfmsub213ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xbb, 0xd4                                           }, { vfmsub231ss xmm2,xmm6,xmm4                                   }
testcase	{ 0xc4, 0xe2, 0x49, 0xbb, 0x11                                           }, { vfmsub231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0xbb, 0x11                                           }, { vfmsub231ss xmm2,xmm6,DWORD [ecx]                            }
testcase	{ 0xc4, 0xe2, 0x49, 0x9d, 0xd4                                           }, { vfnmadd132ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0x9d, 0x11                                           }, { vfnmadd132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9d, 0x11                                           }, { vfnmadd132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xad, 0xd4                                           }, { vfnmadd213ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xad, 0x11                                           }, { vfnmadd213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xad, 0x11                                           }, { vfnmadd213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbd, 0xd4                                           }, { vfnmadd231ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xbd, 0x11                                           }, { vfnmadd231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbd, 0x11                                           }, { vfnmadd231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9f, 0xd4                                           }, { vfnmsub132ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0x9f, 0x11                                           }, { vfnmsub132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0x9f, 0x11                                           }, { vfnmsub132ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xaf, 0xd4                                           }, { vfnmsub213ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xaf, 0x11                                           }, { vfnmsub213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xaf, 0x11                                           }, { vfnmsub213ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbf, 0xd4                                           }, { vfnmsub231ss xmm2,xmm6,xmm4                                  }
testcase	{ 0xc4, 0xe2, 0x49, 0xbf, 0x11                                           }, { vfnmsub231ss xmm2,xmm6,DWORD [ecx]                           }
testcase	{ 0xc4, 0xe2, 0x49, 0xbf, 0x11                                           }, { vfnmsub231ss xmm2,xmm6,DWORD [ecx]                           }
