#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'net/http'
require 'uri'
require 'yaml'


config = YAML.load_file(File.expand_path('../config.yml', __FILE__))

sfs_url = config['sfs_url']
stay_url = config['stay_url']
ks = config['ks']
yc = config['yc']

cns_account = config['cns_account']
cns_password = config['cns_password']
my_phone_num = config['my_phone_num']
emergency_phone_num = config['emergency_phone_num']
estimated_time_to_stay = config['estimated_time_to_stay']
building = config['building'] # Z => 8
floor = config['floor']
room = config['room']
reason = config['reason']

sfs_url = URI.parse(sfs_url)
sfs_res = Net::HTTP.post_form(sfs_url, {
  u_login: cns_account,
  u_pass: cns_password,
  lang: 'ja'
})

stay_url = URI.parse(stay_url)
enc_id = sfs_res.body.match(/\A.+id=(.+)&type=.+\Z/)[1]
stay_url.query = URI.encode_www_form({
  yc: yc,
  ks: ks,
  enc_id: enc_id
})
Net::HTTP.get_response(stay_url)

Net::HTTP.post_form(stay_url, {
  stay_phone: my_phone_num,
  stay_p_phone: emergency_phone_num,
  stay_time: estimated_time_to_stay,
  selectRoom: building,
  selectFloor: floor,
  stay_room_other: room,
  stay_reason: reason.encode('EUC-JP'),
  yc: yc,
  ks: ks,
  mode: 'submit',
  enc_id: enc_id
})

puts 'Successfully submited!'
