
bits 64


testcase   { 0xf2,0x0f,0xd0,0x0d,0x78,0x56,0x34,0x12            },{ addsubps  xmm1,oword [rip 0x12345678]              }
testcase   { 0x66,0x0f,0x2f,0x0d,0x78,0x56,0x34,0x12            },{ comisd  xmm1,qword [rip 0x12345678]                }
testcase   { 0x0f,0x2f,0x0d,0x78,0x56,0x34,0x12                 },{ comiss  xmm1,dword [rip 0x12345678]                }
testcase   { 0xf3,0x0f,0xe6,0x0d,0x78,0x56,0x34,0x12            },{ cvtdq2pd  xmm1,qword [rip 0x12345678]              }
testcase   { 0xf2,0x0f,0xe6,0x0d,0x78,0x56,0x34,0x12            },{ cvtpd2dq  xmm1,oword [rip 0x12345678]              }
testcase   { 0x0f,0x5a,0x0d,0x78,0x56,0x34,0x12                 },{ cvtps2pd  xmm1,qword [rip 0x12345678]              }
testcase   { 0xf3,0x0f,0x5b,0x0d,0x78,0x56,0x34,0x12            },{ cvttps2dq  xmm1,oword [rip 0x12345678]             }
testcase   { 0xf3,0x0f,0x2a,0xc8                                },{ cvtsi2ss  xmm1,eax                                 }
testcase   { 0xf2,0x0f,0x2a,0xc8                                },{ cvtsi2sd  xmm1,eax                                 }
testcase   { 0xf3,0x0f,0x2a,0xc8                                },{ cvtsi2ss  xmm1,eax                                 }
testcase   { 0xf2,0x0f,0x2a,0xc8                                },{ cvtsi2sd  xmm1,eax                                 }
testcase   { 0xf3,0x48,0x0f,0x2a,0xc8                           },{ cvtsi2ss  xmm1,rax                                 }
testcase   { 0xf2,0x48,0x0f,0x2a,0xc8                           },{ cvtsi2sd  xmm1,rax                                 }
testcase   { 0xf3,0x48,0x0f,0x2a,0xc8                           },{ cvtsi2ss  xmm1,rax                                 }
testcase   { 0xf2,0x48,0x0f,0x2a,0xc8                           },{ cvtsi2sd  xmm1,rax                                 }
testcase   { 0xf3,0x0f,0x2a,0x08                                },{ cvtsi2ss  xmm1,dword [rax]                         }
testcase   { 0xf2,0x0f,0x2a,0x08                                },{ cvtsi2sd  xmm1,dword [rax]                         }
testcase   { 0xf3,0x0f,0x2a,0x08                                },{ cvtsi2ss  xmm1,dword [rax]                         }
testcase   { 0xf2,0x0f,0x2a,0x08                                },{ cvtsi2sd  xmm1,dword [rax]                         }
testcase   { 0xf3,0x48,0x0f,0x2a,0x08                           },{ cvtsi2ss  xmm1,qword [rax]                         }
testcase   { 0xf2,0x48,0x0f,0x2a,0x08                           },{ cvtsi2sd  xmm1,qword [rax]                         }
testcase   { 0xf2,0x0f,0x7c,0x0d,0x78,0x56,0x34,0x12            },{ haddps  xmm1,oword [rip 0x12345678]                }
testcase   { 0xf3,0x0f,0x7f,0x0d,0x78,0x56,0x34,0x12            },{ movdqu  oword [rip 0x12345678],xmm1                }
testcase   { 0xf3,0x0f,0x6f,0x0d,0x78,0x56,0x34,0x12            },{ movdqu  xmm1,oword [rip 0x12345678]                }
testcase   { 0x66,0x0f,0x17,0x0d,0x78,0x56,0x34,0x12            },{ movhpd  qword [rip 0x12345678],xmm1                }
testcase   { 0x66,0x0f,0x16,0x0d,0x78,0x56,0x34,0x12            },{ movhpd  xmm1,qword [rip 0x12345678]                }
testcase   { 0x0f,0x17,0x0d,0x78,0x56,0x34,0x12                 },{ movhps  qword [rip 0x12345678],xmm1                }
testcase   { 0x0f,0x16,0x0d,0x78,0x56,0x34,0x12                 },{ movhps  xmm1,qword [rip 0x12345678]                }
testcase   { 0x66,0x0f,0x13,0x0d,0x78,0x56,0x34,0x12            },{ movlpd  qword [rip 0x12345678],xmm1                }
testcase   { 0x66,0x0f,0x12,0x0d,0x78,0x56,0x34,0x12            },{ movlpd  xmm1,qword [rip 0x12345678]                }
testcase   { 0x0f,0x13,0x0d,0x78,0x56,0x34,0x12                 },{ movlps  qword [rip 0x12345678],xmm1                }
testcase   { 0x0f,0x12,0x0d,0x78,0x56,0x34,0x12                 },{ movlps  xmm1,qword [rip 0x12345678]                }
testcase   { 0x66,0x0f,0xd6,0x0d,0x78,0x56,0x34,0x12            },{ movq  qword [rip 0x12345678],xmm1                  }
testcase   { 0xf3,0x0f,0x7e,0x0d,0x78,0x56,0x34,0x12            },{ movq  xmm1,qword [rip 0x12345678]                  }
testcase   { 0xf3,0x0f,0x16,0x0d,0x78,0x56,0x34,0x12            },{ movshdup  xmm1,oword [rip 0x12345678]              }
testcase   { 0xf3,0x0f,0x12,0x0d,0x78,0x56,0x34,0x12            },{ movsldup  xmm1,oword [rip 0x12345678]              }
testcase   { 0xf3,0x0f,0x70,0x0d,0x78,0x56,0x34,0x12,0x90       },{ pshufhw  xmm1,oword [rip 0x12345678],0x90          }
testcase   { 0xf2,0x0f,0x70,0x0d,0x78,0x56,0x34,0x12,0x90       },{ pshuflw  xmm1,oword [rip 0x12345678],0x90          }
testcase   { 0x0f,0x60,0x0d,0x78,0x56,0x34,0x12                 },{ punpcklbw  mm1,dword [rip 0x12345678]              }
testcase   { 0x0f,0x62,0x0d,0x78,0x56,0x34,0x12                 },{ punpckldq  mm1,dword [rip 0x12345678]              }
testcase   { 0x0f,0x61,0x0d,0x78,0x56,0x34,0x12                 },{ punpcklwd  mm1,dword [rip 0x12345678]              }
testcase   { 0x66,0x0f,0x60,0x0d,0x78,0x56,0x34,0x12            },{ punpcklbw  xmm1,oword [rip 0x12345678]             }
testcase   { 0x66,0x0f,0x62,0x0d,0x78,0x56,0x34,0x12            },{ punpckldq  xmm1,oword [rip 0x12345678]             }
testcase   { 0x66,0x0f,0x61,0x0d,0x78,0x56,0x34,0x12            },{ punpcklwd  xmm1,oword [rip 0x12345678]             }
testcase   { 0x66,0x0f,0x6c,0x0d,0x78,0x56,0x34,0x12            },{ punpcklqdq  xmm1,oword [rip 0x12345678]            }
testcase   { 0x66,0x0f,0x2e,0x0d,0x78,0x56,0x34,0x12            },{ ucomisd  xmm1,qword [rip 0x12345678]               }
testcase   { 0x0f,0x2e,0x0d,0x78,0x56,0x34,0x12                 },{ ucomiss  xmm1,dword [rip 0x12345678]               }
testcase   { 0xf2,0x0f,0xc2,0x00,0x00                           },{ cmpeqsd  xmm0,qword [rax]                          }
testcase   { 0xf3,0x0f,0xc2,0x00,0x00                           },{ cmpeqss  xmm0,dword [rax]                          }
testcase   { 0x66,0x0f,0x2a,0x00                                },{ cvtpi2pd  xmm0,qword [rax]                         }
testcase   { 0x0f,0x2a,0x00                                     },{ cvtpi2ps  xmm0,qword [rax]                         }
testcase   { 0x0f,0x2d,0x00                                     },{ cvtps2pi  mm0,qword [rax]                          }
testcase   { 0xf2,0x0f,0x2d,0x00                                },{ cvtsd2si  eax,qword [rax]                          }
testcase   { 0xf2,0x48,0x0f,0x2d,0x00                           },{ cvtsd2si  rax,qword [rax]                          }
testcase   { 0xf2,0x0f,0x2c,0x00                                },{ cvttsd2si  eax,qword [rax]                         }
testcase   { 0xf2,0x48,0x0f,0x2c,0x00                           },{ cvttsd2si  rax,qword [rax]                         }
testcase   { 0xf2,0x0f,0x5a,0x00                                },{ cvtsd2ss  xmm0,qword [rax]                         }
testcase   { 0xf3,0x0f,0x5a,0x00                                },{ cvtss2sd  xmm0,dword [rax]                         }
testcase   { 0xf3,0x0f,0x2d,0x00                                },{ cvtss2si  eax,dword [rax]                          }
testcase   { 0xf3,0x48,0x0f,0x2d,0x00                           },{ cvtss2si  rax,dword [rax]                          }
testcase   { 0xf3,0x0f,0x2c,0x00                                },{ cvttss2si  eax,dword [rax]                         }
testcase   { 0xf3,0x48,0x0f,0x2c,0x00                           },{ cvttss2si  rax,dword [rax]                         }
testcase   { 0xf2,0x0f,0x5e,0x00                                },{ divsd  xmm0,qword [rax]                            }
testcase   { 0xf3,0x0f,0x5e,0x00                                },{ divss  xmm0,dword [rax]                            }
testcase   { 0xf2,0x0f,0x5f,0x00                                },{ maxsd  xmm0,qword [rax]                            }
testcase   { 0xf3,0x0f,0x5f,0x00                                },{ maxss  xmm0,dword [rax]                            }
testcase   { 0xf3,0x0f,0x5d,0x00                                },{ minss  xmm0,dword [rax]                            }
testcase   { 0xf3,0x0f,0x5d,0x00                                },{ minss  xmm0,dword [rax]                            }
testcase   { 0xf2,0x0f,0x2b,0x00                                },{ movntsd  qword [rax],xmm0                          }
testcase   { 0xf3,0x0f,0x2b,0x00                                },{ movntss  dword [rax],xmm0                          }
testcase   { 0xf2,0x0f,0x10,0x00                                },{ movsd  xmm0,qword [rax]                            }
testcase   { 0xf2,0x0f,0x11,0x00                                },{ movsd  qword [rax],xmm0                            }
testcase   { 0xf3,0x0f,0x10,0x00                                },{ movss  xmm0,dword [rax]                            }
testcase   { 0xf3,0x0f,0x11,0x00                                },{ movss  dword [rax],xmm0                            }
testcase   { 0xf2,0x0f,0x59,0x00                                },{ mulsd  xmm0,qword [rax]                            }
testcase   { 0xf3,0x0f,0x59,0x00                                },{ mulss  xmm0,dword [rax]                            }
testcase   { 0xf3,0x0f,0x53,0x00                                },{ rcpss  xmm0,dword [rax]                            }
testcase   { 0x66,0x0f,0x3a,0x0b,0x00,0x00                      },{ roundsd  xmm0,qword [rax],0x0                      }
testcase   { 0x66,0x0f,0x3a,0x0a,0x00,0x00                      },{ roundss  xmm0,dword [rax],0x0                      }
testcase   { 0xf3,0x0f,0x52,0x00                                },{ rsqrtss  xmm0,dword [rax]                          }
testcase   { 0xf2,0x0f,0x51,0x00                                },{ sqrtsd  xmm0,qword [rax]                           }
testcase   { 0xf3,0x0f,0x51,0x00                                },{ sqrtss  xmm0,dword [rax]                           }
testcase   { 0xf2,0x0f,0x5c,0x00                                },{ subsd  xmm0,qword [rax]                            }
testcase   { 0xf3,0x0f,0x5c,0x00                                },{ subss  xmm0,dword [rax]                            }
testcase   { 0x66,0x0f,0x38,0x20,0x00                           },{ pmovsxbw  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x21,0x00                           },{ pmovsxbd  xmm0,dword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x22,0x00                           },{ pmovsxbq  xmm0,word [rax]                          }
testcase   { 0x66,0x0f,0x38,0x23,0x00                           },{ pmovsxwd  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x24,0x00                           },{ pmovsxwq  xmm0,dword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x25,0x00                           },{ pmovsxdq  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x30,0x00                           },{ pmovzxbw  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x31,0x00                           },{ pmovzxbd  xmm0,dword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x32,0x00                           },{ pmovzxbq  xmm0,word [rax]                          }
testcase   { 0x66,0x0f,0x38,0x33,0x00                           },{ pmovzxwd  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x34,0x00                           },{ pmovzxwq  xmm0,dword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x35,0x00                           },{ pmovzxdq  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x3a,0x21,0x00,0x00                      },{ insertps  xmm0,dword [rax],0x0                     }
testcase   { 0x66,0x0f,0x15,0x08                                },{ unpckhpd  xmm1,oword [rax]                         }
testcase   { 0x0f,0x15,0x08                                     },{ unpckhps  xmm1,oword [rax]                         }
testcase   { 0x66,0x0f,0x14,0x08                                },{ unpcklpd  xmm1,oword [rax]                         }
testcase   { 0x0f,0x14,0x08                                     },{ unpcklps  xmm1,oword [rax]                         }
testcase   { 0xf3,0x0f,0xc2,0xf7,0x10                           },{ cmpss  xmm6,xmm7,0x10                              }
testcase   { 0xf3,0x0f,0xc2,0x38,0x10                           },{ cmpss  xmm7,dword [rax],0x10                       }
testcase   { 0xf2,0x0f,0xc2,0xf7,0x10                           },{ cmpsd  xmm6,xmm7,0x10                              }
testcase   { 0xf2,0x0f,0xc2,0x38,0x10                           },{ cmpsd  xmm7,qword [rax],0x10                       }
testcase   { 0x0f,0xd4,0xc1                                     },{ paddq  mm0,mm1                                     }
testcase   { 0x0f,0xd4,0x00                                     },{ paddq  mm0,qword [rax]                             }
testcase   { 0x66,0x0f,0xd4,0xc1                                },{ paddq  xmm0,xmm1                                   }
testcase   { 0x66,0x0f,0xd4,0x00                                },{ paddq  xmm0,oword [rax]                            }
testcase   { 0x0f,0xfb,0xc1                                     },{ psubq  mm0,mm1                                     }
testcase   { 0x0f,0xfb,0x00                                     },{ psubq  mm0,qword [rax]                             }
testcase   { 0x66,0x0f,0xfb,0xc1                                },{ psubq  xmm0,xmm1                                   }
testcase   { 0x66,0x0f,0xfb,0x00                                },{ psubq  xmm0,oword [rax]                            }
testcase   { 0x0f,0xf4,0xc1                                     },{ pmuludq  mm0,mm1                                   }
testcase   { 0x0f,0xf4,0x00                                     },{ pmuludq  mm0,qword [rax]                           }
testcase   { 0x66,0x0f,0xf4,0xc1                                },{ pmuludq  xmm0,xmm1                                 }
testcase   { 0x66,0x0f,0xf4,0x00                                },{ pmuludq  xmm0,oword [rax]                          }
testcase   { 0xf2,0x0f,0xd0,0x0d,0x78,0x56,0x34,0x12            },{ addsubps  xmm1,oword [rip 0x12345678]              }
testcase   { 0x66,0x0f,0x2f,0x0d,0x78,0x56,0x34,0x12            },{ comisd  xmm1,qword [rip 0x12345678]                }
testcase   { 0x0f,0x2f,0x0d,0x78,0x56,0x34,0x12                 },{ comiss  xmm1,dword [rip 0x12345678]                }
testcase   { 0xf3,0x0f,0xe6,0x0d,0x78,0x56,0x34,0x12            },{ cvtdq2pd  xmm1,qword [rip 0x12345678]              }
testcase   { 0xf2,0x0f,0xe6,0x0d,0x78,0x56,0x34,0x12            },{ cvtpd2dq  xmm1,oword [rip 0x12345678]              }
testcase   { 0x0f,0x5a,0x0d,0x78,0x56,0x34,0x12                 },{ cvtps2pd  xmm1,qword [rip 0x12345678]              }
testcase   { 0xf3,0x0f,0x5b,0x0d,0x78,0x56,0x34,0x12            },{ cvttps2dq  xmm1,oword [rip 0x12345678]             }
testcase   { 0xf3,0x0f,0x2a,0xc8                                },{ cvtsi2ss  xmm1,eax                                 }
testcase   { 0xf2,0x0f,0x2a,0xc8                                },{ cvtsi2sd  xmm1,eax                                 }
testcase   { 0xf3,0x0f,0x2a,0xc8                                },{ cvtsi2ss  xmm1,eax                                 }
testcase   { 0xf2,0x0f,0x2a,0xc8                                },{ cvtsi2sd  xmm1,eax                                 }
testcase   { 0xf3,0x48,0x0f,0x2a,0xc8                           },{ cvtsi2ss  xmm1,rax                                 }
testcase   { 0xf2,0x48,0x0f,0x2a,0xc8                           },{ cvtsi2sd  xmm1,rax                                 }
testcase   { 0xf3,0x48,0x0f,0x2a,0xc8                           },{ cvtsi2ss  xmm1,rax                                 }
testcase   { 0xf2,0x48,0x0f,0x2a,0xc8                           },{ cvtsi2sd  xmm1,rax                                 }
testcase   { 0xf3,0x0f,0x2a,0x08                                },{ cvtsi2ss  xmm1,dword [rax]                         }
testcase   { 0xf2,0x0f,0x2a,0x08                                },{ cvtsi2sd  xmm1,dword [rax]                         }
testcase   { 0xf3,0x0f,0x2a,0x08                                },{ cvtsi2ss  xmm1,dword [rax]                         }
testcase   { 0xf2,0x0f,0x2a,0x08                                },{ cvtsi2sd  xmm1,dword [rax]                         }
testcase   { 0xf3,0x48,0x0f,0x2a,0x08                           },{ cvtsi2ss  xmm1,qword [rax]                         }
testcase   { 0xf2,0x48,0x0f,0x2a,0x08                           },{ cvtsi2sd  xmm1,qword [rax]                         }
testcase   { 0xf3,0x48,0x0f,0x2a,0x08                           },{ cvtsi2ss  xmm1,qword [rax]                         }
testcase   { 0xf2,0x48,0x0f,0x2a,0x08                           },{ cvtsi2sd  xmm1,qword [rax]                         }
testcase   { 0xf2,0x0f,0x7c,0x0d,0x78,0x56,0x34,0x12            },{ haddps  xmm1,oword [rip 0x12345678]                }
testcase   { 0xf3,0x0f,0x7f,0x0d,0x78,0x56,0x34,0x12            },{ movdqu  oword [rip 0x12345678],xmm1                }
testcase   { 0xf3,0x0f,0x6f,0x0d,0x78,0x56,0x34,0x12            },{ movdqu  xmm1,oword [rip 0x12345678]                }
testcase   { 0x66,0x0f,0x17,0x0d,0x78,0x56,0x34,0x12            },{ movhpd  qword [rip 0x12345678],xmm1                }
testcase   { 0x66,0x0f,0x16,0x0d,0x78,0x56,0x34,0x12            },{ movhpd  xmm1,qword [rip 0x12345678]                }
testcase   { 0x0f,0x17,0x0d,0x78,0x56,0x34,0x12                 },{ movhps  qword [rip 0x12345678],xmm1                }
testcase   { 0x0f,0x16,0x0d,0x78,0x56,0x34,0x12                 },{ movhps  xmm1,qword [rip 0x12345678]                }
testcase   { 0x66,0x0f,0x13,0x0d,0x78,0x56,0x34,0x12            },{ movlpd  qword [rip 0x12345678],xmm1                }
testcase   { 0x66,0x0f,0x12,0x0d,0x78,0x56,0x34,0x12            },{ movlpd  xmm1,qword [rip 0x12345678]                }
testcase   { 0x0f,0x13,0x0d,0x78,0x56,0x34,0x12                 },{ movlps  qword [rip 0x12345678],xmm1                }
testcase   { 0x0f,0x12,0x0d,0x78,0x56,0x34,0x12                 },{ movlps  xmm1,qword [rip 0x12345678]                }
testcase   { 0x66,0x0f,0xd6,0x0d,0x78,0x56,0x34,0x12            },{ movq  qword [rip 0x12345678],xmm1                  }
testcase   { 0xf3,0x0f,0x7e,0x0d,0x78,0x56,0x34,0x12            },{ movq  xmm1,qword [rip 0x12345678]                  }
testcase   { 0xf3,0x0f,0x16,0x0d,0x78,0x56,0x34,0x12            },{ movshdup  xmm1,oword [rip 0x12345678]              }
testcase   { 0xf3,0x0f,0x12,0x0d,0x78,0x56,0x34,0x12            },{ movsldup  xmm1,oword [rip 0x12345678]              }
testcase   { 0xf3,0x0f,0x70,0x0d,0x78,0x56,0x34,0x12,0x90       },{ pshufhw  xmm1,oword [rip 0x12345678],0x90          }
testcase   { 0xf2,0x0f,0x70,0x0d,0x78,0x56,0x34,0x12,0x90       },{ pshuflw  xmm1,oword [rip 0x12345678],0x90          }
testcase   { 0x0f,0x60,0x0d,0x78,0x56,0x34,0x12                 },{ punpcklbw  mm1,dword [rip 0x12345678]              }
testcase   { 0x0f,0x62,0x0d,0x78,0x56,0x34,0x12                 },{ punpckldq  mm1,dword [rip 0x12345678]              }
testcase   { 0x0f,0x61,0x0d,0x78,0x56,0x34,0x12                 },{ punpcklwd  mm1,dword [rip 0x12345678]              }
testcase   { 0x66,0x0f,0x60,0x0d,0x78,0x56,0x34,0x12            },{ punpcklbw  xmm1,oword [rip 0x12345678]             }
testcase   { 0x66,0x0f,0x62,0x0d,0x78,0x56,0x34,0x12            },{ punpckldq  xmm1,oword [rip 0x12345678]             }
testcase   { 0x66,0x0f,0x61,0x0d,0x78,0x56,0x34,0x12            },{ punpcklwd  xmm1,oword [rip 0x12345678]             }
testcase   { 0x66,0x0f,0x6c,0x0d,0x78,0x56,0x34,0x12            },{ punpcklqdq  xmm1,oword [rip 0x12345678]            }
testcase   { 0x66,0x0f,0x2e,0x0d,0x78,0x56,0x34,0x12            },{ ucomisd  xmm1,qword [rip 0x12345678]               }
testcase   { 0x0f,0x2e,0x0d,0x78,0x56,0x34,0x12                 },{ ucomiss  xmm1,dword [rip 0x12345678]               }
testcase   { 0xf2,0x0f,0xc2,0x00,0x00                           },{ cmpeqsd  xmm0,qword [rax]                          }
testcase   { 0xf3,0x0f,0xc2,0x00,0x00                           },{ cmpeqss  xmm0,dword [rax]                          }
testcase   { 0x66,0x0f,0x2a,0x00                                },{ cvtpi2pd  xmm0,qword [rax]                         }
testcase   { 0x0f,0x2a,0x00                                     },{ cvtpi2ps  xmm0,qword [rax]                         }
testcase   { 0x0f,0x2d,0x00                                     },{ cvtps2pi  mm0,qword [rax]                          }
testcase   { 0xf2,0x0f,0x2d,0x00                                },{ cvtsd2si  eax,qword [rax]                          }
testcase   { 0xf2,0x48,0x0f,0x2d,0x00                           },{ cvtsd2si  rax,qword [rax]                          }
testcase   { 0xf2,0x0f,0x2c,0x00                                },{ cvttsd2si  eax,qword [rax]                         }
testcase   { 0xf2,0x48,0x0f,0x2c,0x00                           },{ cvttsd2si  rax,qword [rax]                         }
testcase   { 0xf2,0x0f,0x5a,0x00                                },{ cvtsd2ss  xmm0,qword [rax]                         }
testcase   { 0xf3,0x0f,0x5a,0x00                                },{ cvtss2sd  xmm0,dword [rax]                         }
testcase   { 0xf3,0x0f,0x2d,0x00                                },{ cvtss2si  eax,dword [rax]                          }
testcase   { 0xf3,0x48,0x0f,0x2d,0x00                           },{ cvtss2si  rax,dword [rax]                          }
testcase   { 0xf3,0x0f,0x2c,0x00                                },{ cvttss2si  eax,dword [rax]                         }
testcase   { 0xf3,0x48,0x0f,0x2c,0x00                           },{ cvttss2si  rax,dword [rax]                         }
testcase   { 0xf2,0x0f,0x5e,0x00                                },{ divsd  xmm0,qword [rax]                            }
testcase   { 0xf3,0x0f,0x5e,0x00                                },{ divss  xmm0,dword [rax]                            }
testcase   { 0xf2,0x0f,0x5f,0x00                                },{ maxsd  xmm0,qword [rax]                            }
testcase   { 0xf3,0x0f,0x5f,0x00                                },{ maxss  xmm0,dword [rax]                            }
testcase   { 0xf3,0x0f,0x5d,0x00                                },{ minss  xmm0,dword [rax]                            }
testcase   { 0xf3,0x0f,0x5d,0x00                                },{ minss  xmm0,dword [rax]                            }
testcase   { 0xf2,0x0f,0x2b,0x00                                },{ movntsd  qword [rax],xmm0                          }
testcase   { 0xf3,0x0f,0x2b,0x00                                },{ movntss  dword [rax],xmm0                          }
testcase   { 0xf2,0x0f,0x10,0x00                                },{ movsd  xmm0,qword [rax]                            }
testcase   { 0xf2,0x0f,0x11,0x00                                },{ movsd  qword [rax],xmm0                            }
testcase   { 0xf3,0x0f,0x10,0x00                                },{ movss  xmm0,dword [rax]                            }
testcase   { 0xf3,0x0f,0x11,0x00                                },{ movss  dword [rax],xmm0                            }
testcase   { 0xf2,0x0f,0x59,0x00                                },{ mulsd  xmm0,qword [rax]                            }
testcase   { 0xf3,0x0f,0x59,0x00                                },{ mulss  xmm0,dword [rax]                            }
testcase   { 0xf3,0x0f,0x53,0x00                                },{ rcpss  xmm0,dword [rax]                            }
testcase   { 0x66,0x0f,0x3a,0x0b,0x00,0x00                      },{ roundsd  xmm0,qword [rax],0x0                      }
testcase   { 0x66,0x0f,0x3a,0x0a,0x00,0x00                      },{ roundss  xmm0,dword [rax],0x0                      }
testcase   { 0xf3,0x0f,0x52,0x00                                },{ rsqrtss  xmm0,dword [rax]                          }
testcase   { 0xf2,0x0f,0x51,0x00                                },{ sqrtsd  xmm0,qword [rax]                           }
testcase   { 0xf3,0x0f,0x51,0x00                                },{ sqrtss  xmm0,dword [rax]                           }
testcase   { 0xf2,0x0f,0x5c,0x00                                },{ subsd  xmm0,qword [rax]                            }
testcase   { 0xf3,0x0f,0x5c,0x00                                },{ subss  xmm0,dword [rax]                            }
testcase   { 0x66,0x0f,0x38,0x20,0x00                           },{ pmovsxbw  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x21,0x00                           },{ pmovsxbd  xmm0,dword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x22,0x00                           },{ pmovsxbq  xmm0,word [rax]                          }
testcase   { 0x66,0x0f,0x38,0x23,0x00                           },{ pmovsxwd  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x24,0x00                           },{ pmovsxwq  xmm0,dword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x25,0x00                           },{ pmovsxdq  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x30,0x00                           },{ pmovzxbw  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x31,0x00                           },{ pmovzxbd  xmm0,dword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x32,0x00                           },{ pmovzxbq  xmm0,word [rax]                          }
testcase   { 0x66,0x0f,0x38,0x33,0x00                           },{ pmovzxwd  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x34,0x00                           },{ pmovzxwq  xmm0,dword [rax]                         }
testcase   { 0x66,0x0f,0x38,0x35,0x00                           },{ pmovzxdq  xmm0,qword [rax]                         }
testcase   { 0x66,0x0f,0x3a,0x21,0x00,0x00                      },{ insertps  xmm0,dword [rax],0x0                     }
testcase   { 0x66,0x0f,0x15,0x00                                },{ unpckhpd  xmm0,oword [rax]                         }
testcase   { 0x0f,0x15,0x00                                     },{ unpckhps  xmm0,oword [rax]                         }
testcase   { 0x66,0x0f,0x14,0x00                                },{ unpcklpd  xmm0,oword [rax]                         }
testcase   { 0x0f,0x14,0x00                                     },{ unpcklps  xmm0,oword [rax]                         }
testcase   { 0xf3,0x0f,0xc2,0xf7,0x10                           },{ cmpss  xmm6,xmm7,0x10                              }
testcase   { 0xf3,0x0f,0xc2,0x38,0x10                           },{ cmpss  xmm7,dword [rax],0x10                       }
testcase   { 0xf2,0x0f,0xc2,0xf7,0x10                           },{ cmpsd  xmm6,xmm7,0x10                              }
testcase   { 0xf2,0x0f,0xc2,0x38,0x10                           },{ cmpsd  xmm7,qword [rax],0x10                       }
testcase   { 0x0f,0xd4,0x08                                     },{ paddq  mm1,qword [rax]                             }
testcase   { 0x0f,0xd4,0x08                                     },{ paddq  mm1,qword [rax]                             }
testcase   { 0x66,0x0f,0xd4,0x08                                },{ paddq  xmm1,oword [rax]                            }
testcase   { 0x66,0x0f,0xd4,0x08                                },{ paddq  xmm1,oword [rax]                            }
testcase   { 0x0f,0xfb,0x08                                     },{ psubq  mm1,qword [rax]                             }
testcase   { 0x0f,0xfb,0x08                                     },{ psubq  mm1,qword [rax]                             }
testcase   { 0x66,0x0f,0xfb,0x08                                },{ psubq  xmm1,oword [rax]                            }
testcase   { 0x66,0x0f,0xfb,0x08                                },{ psubq  xmm1,oword [rax]                            }
testcase   { 0x0f,0xf4,0x08                                     },{ pmuludq  mm1,qword [rax]                           }
testcase   { 0x0f,0xf4,0x08                                     },{ pmuludq  mm1,qword [rax]                           }
testcase   { 0x66,0x0f,0xf4,0x08                                },{ pmuludq  xmm1,oword [rax]                          }
testcase   { 0x66,0x0f,0xf4,0x08                                },{ pmuludq  xmm1,oword [rax]                          }
