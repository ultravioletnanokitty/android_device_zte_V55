#!/system/bin/sh
# Copyright (c) 2008-2010, Code Aurora Forum. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Code Aurora nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
	 
	 chmod 0000 /dev/taos # Disabling Proximity Sensor 
	 echo 1 > /sys/module/rpm_resources/enable_low_power/L2_cache
	 echo 1 > /sys/module/rpm_resources/enable_low_power/pxo
	 echo 2 > /sys/module/rpm_resources/enable_low_power/vdd_dig
	 echo 2 > /sys/module/rpm_resources/enable_low_power/vdd_mem
	 echo 1 > /sys/module/rpm_resources/enable_low_power/rpm_cpu
	 echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/suspend_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu0/power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu1/power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu0/standalone_power_collapse/idle_enabled
	 echo 1 > /sys/module/pm_8x60/modes/cpu1/standalone_power_collapse/idle_enabled
	 echo "smartassV2" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
#	 echo "smartassV2" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
	 #echo 50000 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
	 #echo 50000 > /sys/devices/system/cpu/cpu1/cpufreq/ondemand/sampling_rate
	 #echo 90 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
	 #echo 90 > /sys/devices/system/cpu/cpu1/cpufreq/ondemand/up_threshold
	 #echo 1 > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
	 #echo 4 > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
	 #chown system /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
	 #chown system /sys/devices/system/cpu/cpu1/cpufreq/ondemand/sampling_rate
	 echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
	 echo 384000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
	 #chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
	 #chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
	 #chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
	 #chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
	 #chown system /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_cur_freq
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/scaling_available_frequencies
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/stats
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/stats
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/stats/time_in_state
	 chown system /sys/devices/system/cpu/cpu0/cpufreq/stats/total_trans
	 chown system /sys/devices/system/cpu/cpu1/cpufreq/stats/total_trans
	 chown system /sys/devices/system/cpu/mfreq
	 chown system /sys/devices/system/cpu/cpufreq
#	 chown root.system /sys/devices/system/cpu
#	 chmod 220 /sys/devices/system/cpu/mfreq
	 chown root.system /sys/devices/system/cpu/cpu1/online
	 chmod 664 /sys/devices/system/cpu/cpu1/online
        chown system /sys/devices/platform/rs300000a7.65536/force_sync
        chown system /sys/devices/platform/rs300000a7.65536/sync_sts
        chown system /sys/devices/platform/rs300100a7.65536/force_sync
        chown system /sys/devices/platform/rs300100a7.65536/sync_sts
