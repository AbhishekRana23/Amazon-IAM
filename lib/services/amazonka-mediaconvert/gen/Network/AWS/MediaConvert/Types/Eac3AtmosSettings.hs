{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosSettings where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConvert.Types.Eac3AtmosBitstreamMode
import Network.AWS.MediaConvert.Types.Eac3AtmosCodingMode
import Network.AWS.MediaConvert.Types.Eac3AtmosDialogueIntelligence
import Network.AWS.MediaConvert.Types.Eac3AtmosDownmixControl
import Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionLine
import Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeCompressionRf
import Network.AWS.MediaConvert.Types.Eac3AtmosDynamicRangeControl
import Network.AWS.MediaConvert.Types.Eac3AtmosMeteringMode
import Network.AWS.MediaConvert.Types.Eac3AtmosStereoDownmix
import Network.AWS.MediaConvert.Types.Eac3AtmosSurroundExMode
import qualified Network.AWS.Prelude as Prelude

-- | Required when you set (Codec) under (AudioDescriptions)>(CodecSettings)
-- to the value EAC3_ATMOS.
--
-- /See:/ 'newEac3AtmosSettings' smart constructor.
data Eac3AtmosSettings = Eac3AtmosSettings'
  { -- | Choose how the service does stereo downmixing. Default value: Not
    -- indicated (ATMOS_STORAGE_DDP_DMIXMOD_NOT_INDICATED) Related setting: To
    -- have MediaConvert use this value, keep the default value, Custom
    -- (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise,
    -- MediaConvert ignores Stereo downmix (StereoDownmix).
    stereoDownmix :: Prelude.Maybe Eac3AtmosStereoDownmix,
    -- | Specify a value for the following Dolby Atmos setting: Left only\/Right
    -- only center mix (Lo\/Ro center). MediaConvert uses this value for
    -- downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB).
    -- Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related
    -- setting: How the service uses this value depends on the value that you
    -- choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To
    -- have MediaConvert use this value, keep the default value, Custom
    -- (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise,
    -- MediaConvert ignores Left only\/Right only center (LoRoCenterMixLevel).
    loRoCenterMixLevel :: Prelude.Maybe Prelude.Double,
    -- | Specify a value for the following Dolby Atmos setting: Left total\/Right
    -- total center mix (Lt\/Rt center). MediaConvert uses this value for
    -- downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB)
    -- Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related
    -- setting: How the service uses this value depends on the value that you
    -- choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To
    -- have MediaConvert use this value, keep the default value, Custom
    -- (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise,
    -- MediaConvert ignores Left total\/Right total center
    -- (LtRtCenterMixLevel).
    ltRtCenterMixLevel :: Prelude.Maybe Prelude.Double,
    -- | Choose the Dolby dynamic range control (DRC) profile that MediaConvert
    -- uses when encoding the metadata in the Dolby stream for the line
    -- operating mode. Default value: Film light
    -- (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT) Related setting: To have
    -- MediaConvert use the value you specify here, keep the default value,
    -- Custom (SPECIFIED) for the setting Dynamic range control
    -- (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic range
    -- compression line (DynamicRangeCompressionLine). For information about
    -- the Dolby DRC operating modes and profiles, see the Dynamic Range
    -- Control chapter of the Dolby Metadata Guide at
    -- https:\/\/developer.dolby.com\/globalassets\/professional\/documents\/dolby-metadata-guide.pdf.
    dynamicRangeCompressionLine :: Prelude.Maybe Eac3AtmosDynamicRangeCompressionLine,
    -- | Specify a value for the following Dolby Atmos setting: Left total\/Right
    -- total surround mix (Lt\/Rt surround). MediaConvert uses this value for
    -- downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB)
    -- Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the
    -- channel. Related setting: How the service uses this value depends on the
    -- value that you choose for Stereo downmix (Eac3AtmosStereoDownmix).
    -- Related setting: To have MediaConvert use this value, keep the default
    -- value, Custom (SPECIFIED) for the setting Downmix control
    -- (DownmixControl). Otherwise, the service ignores Left total\/Right total
    -- surround (LtRtSurroundMixLevel).
    ltRtSurroundMixLevel :: Prelude.Maybe Prelude.Double,
    -- | Specify a value for the following Dolby Atmos setting: Left only\/Right
    -- only (Lo\/Ro surround). MediaConvert uses this value for downmixing.
    -- Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB). Valid
    -- values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the
    -- channel. Related setting: How the service uses this value depends on the
    -- value that you choose for Stereo downmix (Eac3AtmosStereoDownmix).
    -- Related setting: To have MediaConvert use this value, keep the default
    -- value, Custom (SPECIFIED) for the setting Downmix control
    -- (DownmixControl). Otherwise, MediaConvert ignores Left only\/Right only
    -- surround (LoRoSurroundMixLevel).
    loRoSurroundMixLevel :: Prelude.Maybe Prelude.Double,
    -- | Specify whether MediaConvert should use any dynamic range control
    -- metadata from your input file. Keep the default value, Custom
    -- (SPECIFIED), to provide dynamic range control values in your job
    -- settings. Choose Follow source (INITIALIZE_FROM_SOURCE) to use the
    -- metadata from your input. Related settings--Use these settings to
    -- specify your dynamic range control values: Dynamic range compression
    -- line (DynamicRangeCompressionLine) and Dynamic range compression RF
    -- (DynamicRangeCompressionRf). When you keep the value Custom (SPECIFIED)
    -- for Dynamic range control (DynamicRangeControl) and you don\'t specify
    -- values for the related settings, MediaConvert uses default values for
    -- those settings.
    dynamicRangeControl :: Prelude.Maybe Eac3AtmosDynamicRangeControl,
    -- | Specify the bitstream mode for the E-AC-3 stream that the encoder emits.
    -- For more information about the EAC3 bitstream mode, see ATSC A\/52-2012
    -- (Annex E).
    bitstreamMode :: Prelude.Maybe Eac3AtmosBitstreamMode,
    -- | Choose the Dolby dynamic range control (DRC) profile that MediaConvert
    -- uses when encoding the metadata in the Dolby stream for the RF operating
    -- mode. Default value: Film light (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT)
    -- Related setting: To have MediaConvert use the value you specify here,
    -- keep the default value, Custom (SPECIFIED) for the setting Dynamic range
    -- control (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic
    -- range compression RF (DynamicRangeCompressionRf). For information about
    -- the Dolby DRC operating modes and profiles, see the Dynamic Range
    -- Control chapter of the Dolby Metadata Guide at
    -- https:\/\/developer.dolby.com\/globalassets\/professional\/documents\/dolby-metadata-guide.pdf.
    dynamicRangeCompressionRf :: Prelude.Maybe Eac3AtmosDynamicRangeCompressionRf,
    -- | The coding mode for Dolby Digital Plus JOC (Atmos).
    codingMode :: Prelude.Maybe Eac3AtmosCodingMode,
    -- | This value is always 48000. It represents the sample rate in Hz.
    sampleRate :: Prelude.Maybe Prelude.Natural,
    -- | Specify the percentage of audio content, from 0% to 100%, that must be
    -- speech in order for the encoder to use the measured speech loudness as
    -- the overall program loudness. Default value: 15%
    speechThreshold :: Prelude.Maybe Prelude.Natural,
    -- | Specify the average bitrate for this output in bits per second. Valid
    -- values: 384k, 448k, 576k, 640k, 768k, 1024k Default value: 448k Note
    -- that MediaConvert supports 384k only with channel-based immersive (CBI)
    -- 7.1.4 and 5.1.4 inputs. For CBI 9.1.6 and other input types,
    -- MediaConvert automatically increases your output bitrate to 448k.
    bitrate :: Prelude.Maybe Prelude.Natural,
    -- | Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue
    -- analysis.
    dialogueIntelligence :: Prelude.Maybe Eac3AtmosDialogueIntelligence,
    -- | Choose how the service meters the loudness of your audio.
    meteringMode :: Prelude.Maybe Eac3AtmosMeteringMode,
    -- | Specify whether your input audio has an additional center rear surround
    -- channel matrix encoded into your left and right surround channels.
    surroundExMode :: Prelude.Maybe Eac3AtmosSurroundExMode,
    -- | Specify whether MediaConvert should use any downmix metadata from your
    -- input file. Keep the default value, Custom (SPECIFIED) to provide
    -- downmix values in your job settings. Choose Follow source
    -- (INITIALIZE_FROM_SOURCE) to use the metadata from your input. Related
    -- settings--Use these settings to specify your downmix values: Left
    -- only\/Right only surround (LoRoSurroundMixLevel), Left total\/Right
    -- total surround (LtRtSurroundMixLevel), Left total\/Right total center
    -- (LtRtCenterMixLevel), Left only\/Right only center (LoRoCenterMixLevel),
    -- and Stereo downmix (StereoDownmix). When you keep Custom (SPECIFIED) for
    -- Downmix control (DownmixControl) and you don\'t specify values for the
    -- related settings, MediaConvert uses default values for those settings.
    downmixControl :: Prelude.Maybe Eac3AtmosDownmixControl
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'Eac3AtmosSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'stereoDownmix', 'eac3AtmosSettings_stereoDownmix' - Choose how the service does stereo downmixing. Default value: Not
-- indicated (ATMOS_STORAGE_DDP_DMIXMOD_NOT_INDICATED) Related setting: To
-- have MediaConvert use this value, keep the default value, Custom
-- (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise,
-- MediaConvert ignores Stereo downmix (StereoDownmix).
--
-- 'loRoCenterMixLevel', 'eac3AtmosSettings_loRoCenterMixLevel' - Specify a value for the following Dolby Atmos setting: Left only\/Right
-- only center mix (Lo\/Ro center). MediaConvert uses this value for
-- downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB).
-- Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related
-- setting: How the service uses this value depends on the value that you
-- choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To
-- have MediaConvert use this value, keep the default value, Custom
-- (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise,
-- MediaConvert ignores Left only\/Right only center (LoRoCenterMixLevel).
--
-- 'ltRtCenterMixLevel', 'eac3AtmosSettings_ltRtCenterMixLevel' - Specify a value for the following Dolby Atmos setting: Left total\/Right
-- total center mix (Lt\/Rt center). MediaConvert uses this value for
-- downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB)
-- Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related
-- setting: How the service uses this value depends on the value that you
-- choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To
-- have MediaConvert use this value, keep the default value, Custom
-- (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise,
-- MediaConvert ignores Left total\/Right total center
-- (LtRtCenterMixLevel).
--
-- 'dynamicRangeCompressionLine', 'eac3AtmosSettings_dynamicRangeCompressionLine' - Choose the Dolby dynamic range control (DRC) profile that MediaConvert
-- uses when encoding the metadata in the Dolby stream for the line
-- operating mode. Default value: Film light
-- (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT) Related setting: To have
-- MediaConvert use the value you specify here, keep the default value,
-- Custom (SPECIFIED) for the setting Dynamic range control
-- (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic range
-- compression line (DynamicRangeCompressionLine). For information about
-- the Dolby DRC operating modes and profiles, see the Dynamic Range
-- Control chapter of the Dolby Metadata Guide at
-- https:\/\/developer.dolby.com\/globalassets\/professional\/documents\/dolby-metadata-guide.pdf.
--
-- 'ltRtSurroundMixLevel', 'eac3AtmosSettings_ltRtSurroundMixLevel' - Specify a value for the following Dolby Atmos setting: Left total\/Right
-- total surround mix (Lt\/Rt surround). MediaConvert uses this value for
-- downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB)
-- Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the
-- channel. Related setting: How the service uses this value depends on the
-- value that you choose for Stereo downmix (Eac3AtmosStereoDownmix).
-- Related setting: To have MediaConvert use this value, keep the default
-- value, Custom (SPECIFIED) for the setting Downmix control
-- (DownmixControl). Otherwise, the service ignores Left total\/Right total
-- surround (LtRtSurroundMixLevel).
--
-- 'loRoSurroundMixLevel', 'eac3AtmosSettings_loRoSurroundMixLevel' - Specify a value for the following Dolby Atmos setting: Left only\/Right
-- only (Lo\/Ro surround). MediaConvert uses this value for downmixing.
-- Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB). Valid
-- values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the
-- channel. Related setting: How the service uses this value depends on the
-- value that you choose for Stereo downmix (Eac3AtmosStereoDownmix).
-- Related setting: To have MediaConvert use this value, keep the default
-- value, Custom (SPECIFIED) for the setting Downmix control
-- (DownmixControl). Otherwise, MediaConvert ignores Left only\/Right only
-- surround (LoRoSurroundMixLevel).
--
-- 'dynamicRangeControl', 'eac3AtmosSettings_dynamicRangeControl' - Specify whether MediaConvert should use any dynamic range control
-- metadata from your input file. Keep the default value, Custom
-- (SPECIFIED), to provide dynamic range control values in your job
-- settings. Choose Follow source (INITIALIZE_FROM_SOURCE) to use the
-- metadata from your input. Related settings--Use these settings to
-- specify your dynamic range control values: Dynamic range compression
-- line (DynamicRangeCompressionLine) and Dynamic range compression RF
-- (DynamicRangeCompressionRf). When you keep the value Custom (SPECIFIED)
-- for Dynamic range control (DynamicRangeControl) and you don\'t specify
-- values for the related settings, MediaConvert uses default values for
-- those settings.
--
-- 'bitstreamMode', 'eac3AtmosSettings_bitstreamMode' - Specify the bitstream mode for the E-AC-3 stream that the encoder emits.
-- For more information about the EAC3 bitstream mode, see ATSC A\/52-2012
-- (Annex E).
--
-- 'dynamicRangeCompressionRf', 'eac3AtmosSettings_dynamicRangeCompressionRf' - Choose the Dolby dynamic range control (DRC) profile that MediaConvert
-- uses when encoding the metadata in the Dolby stream for the RF operating
-- mode. Default value: Film light (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT)
-- Related setting: To have MediaConvert use the value you specify here,
-- keep the default value, Custom (SPECIFIED) for the setting Dynamic range
-- control (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic
-- range compression RF (DynamicRangeCompressionRf). For information about
-- the Dolby DRC operating modes and profiles, see the Dynamic Range
-- Control chapter of the Dolby Metadata Guide at
-- https:\/\/developer.dolby.com\/globalassets\/professional\/documents\/dolby-metadata-guide.pdf.
--
-- 'codingMode', 'eac3AtmosSettings_codingMode' - The coding mode for Dolby Digital Plus JOC (Atmos).
--
-- 'sampleRate', 'eac3AtmosSettings_sampleRate' - This value is always 48000. It represents the sample rate in Hz.
--
-- 'speechThreshold', 'eac3AtmosSettings_speechThreshold' - Specify the percentage of audio content, from 0% to 100%, that must be
-- speech in order for the encoder to use the measured speech loudness as
-- the overall program loudness. Default value: 15%
--
-- 'bitrate', 'eac3AtmosSettings_bitrate' - Specify the average bitrate for this output in bits per second. Valid
-- values: 384k, 448k, 576k, 640k, 768k, 1024k Default value: 448k Note
-- that MediaConvert supports 384k only with channel-based immersive (CBI)
-- 7.1.4 and 5.1.4 inputs. For CBI 9.1.6 and other input types,
-- MediaConvert automatically increases your output bitrate to 448k.
--
-- 'dialogueIntelligence', 'eac3AtmosSettings_dialogueIntelligence' - Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue
-- analysis.
--
-- 'meteringMode', 'eac3AtmosSettings_meteringMode' - Choose how the service meters the loudness of your audio.
--
-- 'surroundExMode', 'eac3AtmosSettings_surroundExMode' - Specify whether your input audio has an additional center rear surround
-- channel matrix encoded into your left and right surround channels.
--
-- 'downmixControl', 'eac3AtmosSettings_downmixControl' - Specify whether MediaConvert should use any downmix metadata from your
-- input file. Keep the default value, Custom (SPECIFIED) to provide
-- downmix values in your job settings. Choose Follow source
-- (INITIALIZE_FROM_SOURCE) to use the metadata from your input. Related
-- settings--Use these settings to specify your downmix values: Left
-- only\/Right only surround (LoRoSurroundMixLevel), Left total\/Right
-- total surround (LtRtSurroundMixLevel), Left total\/Right total center
-- (LtRtCenterMixLevel), Left only\/Right only center (LoRoCenterMixLevel),
-- and Stereo downmix (StereoDownmix). When you keep Custom (SPECIFIED) for
-- Downmix control (DownmixControl) and you don\'t specify values for the
-- related settings, MediaConvert uses default values for those settings.
newEac3AtmosSettings ::
  Eac3AtmosSettings
newEac3AtmosSettings =
  Eac3AtmosSettings'
    { stereoDownmix = Prelude.Nothing,
      loRoCenterMixLevel = Prelude.Nothing,
      ltRtCenterMixLevel = Prelude.Nothing,
      dynamicRangeCompressionLine = Prelude.Nothing,
      ltRtSurroundMixLevel = Prelude.Nothing,
      loRoSurroundMixLevel = Prelude.Nothing,
      dynamicRangeControl = Prelude.Nothing,
      bitstreamMode = Prelude.Nothing,
      dynamicRangeCompressionRf = Prelude.Nothing,
      codingMode = Prelude.Nothing,
      sampleRate = Prelude.Nothing,
      speechThreshold = Prelude.Nothing,
      bitrate = Prelude.Nothing,
      dialogueIntelligence = Prelude.Nothing,
      meteringMode = Prelude.Nothing,
      surroundExMode = Prelude.Nothing,
      downmixControl = Prelude.Nothing
    }

-- | Choose how the service does stereo downmixing. Default value: Not
-- indicated (ATMOS_STORAGE_DDP_DMIXMOD_NOT_INDICATED) Related setting: To
-- have MediaConvert use this value, keep the default value, Custom
-- (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise,
-- MediaConvert ignores Stereo downmix (StereoDownmix).
eac3AtmosSettings_stereoDownmix :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosStereoDownmix)
eac3AtmosSettings_stereoDownmix = Lens.lens (\Eac3AtmosSettings' {stereoDownmix} -> stereoDownmix) (\s@Eac3AtmosSettings' {} a -> s {stereoDownmix = a} :: Eac3AtmosSettings)

-- | Specify a value for the following Dolby Atmos setting: Left only\/Right
-- only center mix (Lo\/Ro center). MediaConvert uses this value for
-- downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB).
-- Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related
-- setting: How the service uses this value depends on the value that you
-- choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To
-- have MediaConvert use this value, keep the default value, Custom
-- (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise,
-- MediaConvert ignores Left only\/Right only center (LoRoCenterMixLevel).
eac3AtmosSettings_loRoCenterMixLevel :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Prelude.Double)
eac3AtmosSettings_loRoCenterMixLevel = Lens.lens (\Eac3AtmosSettings' {loRoCenterMixLevel} -> loRoCenterMixLevel) (\s@Eac3AtmosSettings' {} a -> s {loRoCenterMixLevel = a} :: Eac3AtmosSettings)

-- | Specify a value for the following Dolby Atmos setting: Left total\/Right
-- total center mix (Lt\/Rt center). MediaConvert uses this value for
-- downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB)
-- Valid values: 3.0, 1.5, 0.0, -1.5, -3.0, -4.5, and -6.0. Related
-- setting: How the service uses this value depends on the value that you
-- choose for Stereo downmix (Eac3AtmosStereoDownmix). Related setting: To
-- have MediaConvert use this value, keep the default value, Custom
-- (SPECIFIED) for the setting Downmix control (DownmixControl). Otherwise,
-- MediaConvert ignores Left total\/Right total center
-- (LtRtCenterMixLevel).
eac3AtmosSettings_ltRtCenterMixLevel :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Prelude.Double)
eac3AtmosSettings_ltRtCenterMixLevel = Lens.lens (\Eac3AtmosSettings' {ltRtCenterMixLevel} -> ltRtCenterMixLevel) (\s@Eac3AtmosSettings' {} a -> s {ltRtCenterMixLevel = a} :: Eac3AtmosSettings)

-- | Choose the Dolby dynamic range control (DRC) profile that MediaConvert
-- uses when encoding the metadata in the Dolby stream for the line
-- operating mode. Default value: Film light
-- (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT) Related setting: To have
-- MediaConvert use the value you specify here, keep the default value,
-- Custom (SPECIFIED) for the setting Dynamic range control
-- (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic range
-- compression line (DynamicRangeCompressionLine). For information about
-- the Dolby DRC operating modes and profiles, see the Dynamic Range
-- Control chapter of the Dolby Metadata Guide at
-- https:\/\/developer.dolby.com\/globalassets\/professional\/documents\/dolby-metadata-guide.pdf.
eac3AtmosSettings_dynamicRangeCompressionLine :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosDynamicRangeCompressionLine)
eac3AtmosSettings_dynamicRangeCompressionLine = Lens.lens (\Eac3AtmosSettings' {dynamicRangeCompressionLine} -> dynamicRangeCompressionLine) (\s@Eac3AtmosSettings' {} a -> s {dynamicRangeCompressionLine = a} :: Eac3AtmosSettings)

-- | Specify a value for the following Dolby Atmos setting: Left total\/Right
-- total surround mix (Lt\/Rt surround). MediaConvert uses this value for
-- downmixing. Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB)
-- Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the
-- channel. Related setting: How the service uses this value depends on the
-- value that you choose for Stereo downmix (Eac3AtmosStereoDownmix).
-- Related setting: To have MediaConvert use this value, keep the default
-- value, Custom (SPECIFIED) for the setting Downmix control
-- (DownmixControl). Otherwise, the service ignores Left total\/Right total
-- surround (LtRtSurroundMixLevel).
eac3AtmosSettings_ltRtSurroundMixLevel :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Prelude.Double)
eac3AtmosSettings_ltRtSurroundMixLevel = Lens.lens (\Eac3AtmosSettings' {ltRtSurroundMixLevel} -> ltRtSurroundMixLevel) (\s@Eac3AtmosSettings' {} a -> s {ltRtSurroundMixLevel = a} :: Eac3AtmosSettings)

-- | Specify a value for the following Dolby Atmos setting: Left only\/Right
-- only (Lo\/Ro surround). MediaConvert uses this value for downmixing.
-- Default value: -3 dB (ATMOS_STORAGE_DDP_MIXLEV_MINUS_3_DB). Valid
-- values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes the
-- channel. Related setting: How the service uses this value depends on the
-- value that you choose for Stereo downmix (Eac3AtmosStereoDownmix).
-- Related setting: To have MediaConvert use this value, keep the default
-- value, Custom (SPECIFIED) for the setting Downmix control
-- (DownmixControl). Otherwise, MediaConvert ignores Left only\/Right only
-- surround (LoRoSurroundMixLevel).
eac3AtmosSettings_loRoSurroundMixLevel :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Prelude.Double)
eac3AtmosSettings_loRoSurroundMixLevel = Lens.lens (\Eac3AtmosSettings' {loRoSurroundMixLevel} -> loRoSurroundMixLevel) (\s@Eac3AtmosSettings' {} a -> s {loRoSurroundMixLevel = a} :: Eac3AtmosSettings)

-- | Specify whether MediaConvert should use any dynamic range control
-- metadata from your input file. Keep the default value, Custom
-- (SPECIFIED), to provide dynamic range control values in your job
-- settings. Choose Follow source (INITIALIZE_FROM_SOURCE) to use the
-- metadata from your input. Related settings--Use these settings to
-- specify your dynamic range control values: Dynamic range compression
-- line (DynamicRangeCompressionLine) and Dynamic range compression RF
-- (DynamicRangeCompressionRf). When you keep the value Custom (SPECIFIED)
-- for Dynamic range control (DynamicRangeControl) and you don\'t specify
-- values for the related settings, MediaConvert uses default values for
-- those settings.
eac3AtmosSettings_dynamicRangeControl :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosDynamicRangeControl)
eac3AtmosSettings_dynamicRangeControl = Lens.lens (\Eac3AtmosSettings' {dynamicRangeControl} -> dynamicRangeControl) (\s@Eac3AtmosSettings' {} a -> s {dynamicRangeControl = a} :: Eac3AtmosSettings)

-- | Specify the bitstream mode for the E-AC-3 stream that the encoder emits.
-- For more information about the EAC3 bitstream mode, see ATSC A\/52-2012
-- (Annex E).
eac3AtmosSettings_bitstreamMode :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosBitstreamMode)
eac3AtmosSettings_bitstreamMode = Lens.lens (\Eac3AtmosSettings' {bitstreamMode} -> bitstreamMode) (\s@Eac3AtmosSettings' {} a -> s {bitstreamMode = a} :: Eac3AtmosSettings)

-- | Choose the Dolby dynamic range control (DRC) profile that MediaConvert
-- uses when encoding the metadata in the Dolby stream for the RF operating
-- mode. Default value: Film light (ATMOS_STORAGE_DDP_COMPR_FILM_LIGHT)
-- Related setting: To have MediaConvert use the value you specify here,
-- keep the default value, Custom (SPECIFIED) for the setting Dynamic range
-- control (DynamicRangeControl). Otherwise, MediaConvert ignores Dynamic
-- range compression RF (DynamicRangeCompressionRf). For information about
-- the Dolby DRC operating modes and profiles, see the Dynamic Range
-- Control chapter of the Dolby Metadata Guide at
-- https:\/\/developer.dolby.com\/globalassets\/professional\/documents\/dolby-metadata-guide.pdf.
eac3AtmosSettings_dynamicRangeCompressionRf :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosDynamicRangeCompressionRf)
eac3AtmosSettings_dynamicRangeCompressionRf = Lens.lens (\Eac3AtmosSettings' {dynamicRangeCompressionRf} -> dynamicRangeCompressionRf) (\s@Eac3AtmosSettings' {} a -> s {dynamicRangeCompressionRf = a} :: Eac3AtmosSettings)

-- | The coding mode for Dolby Digital Plus JOC (Atmos).
eac3AtmosSettings_codingMode :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosCodingMode)
eac3AtmosSettings_codingMode = Lens.lens (\Eac3AtmosSettings' {codingMode} -> codingMode) (\s@Eac3AtmosSettings' {} a -> s {codingMode = a} :: Eac3AtmosSettings)

-- | This value is always 48000. It represents the sample rate in Hz.
eac3AtmosSettings_sampleRate :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Prelude.Natural)
eac3AtmosSettings_sampleRate = Lens.lens (\Eac3AtmosSettings' {sampleRate} -> sampleRate) (\s@Eac3AtmosSettings' {} a -> s {sampleRate = a} :: Eac3AtmosSettings)

-- | Specify the percentage of audio content, from 0% to 100%, that must be
-- speech in order for the encoder to use the measured speech loudness as
-- the overall program loudness. Default value: 15%
eac3AtmosSettings_speechThreshold :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Prelude.Natural)
eac3AtmosSettings_speechThreshold = Lens.lens (\Eac3AtmosSettings' {speechThreshold} -> speechThreshold) (\s@Eac3AtmosSettings' {} a -> s {speechThreshold = a} :: Eac3AtmosSettings)

-- | Specify the average bitrate for this output in bits per second. Valid
-- values: 384k, 448k, 576k, 640k, 768k, 1024k Default value: 448k Note
-- that MediaConvert supports 384k only with channel-based immersive (CBI)
-- 7.1.4 and 5.1.4 inputs. For CBI 9.1.6 and other input types,
-- MediaConvert automatically increases your output bitrate to 448k.
eac3AtmosSettings_bitrate :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Prelude.Natural)
eac3AtmosSettings_bitrate = Lens.lens (\Eac3AtmosSettings' {bitrate} -> bitrate) (\s@Eac3AtmosSettings' {} a -> s {bitrate = a} :: Eac3AtmosSettings)

-- | Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue
-- analysis.
eac3AtmosSettings_dialogueIntelligence :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosDialogueIntelligence)
eac3AtmosSettings_dialogueIntelligence = Lens.lens (\Eac3AtmosSettings' {dialogueIntelligence} -> dialogueIntelligence) (\s@Eac3AtmosSettings' {} a -> s {dialogueIntelligence = a} :: Eac3AtmosSettings)

-- | Choose how the service meters the loudness of your audio.
eac3AtmosSettings_meteringMode :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosMeteringMode)
eac3AtmosSettings_meteringMode = Lens.lens (\Eac3AtmosSettings' {meteringMode} -> meteringMode) (\s@Eac3AtmosSettings' {} a -> s {meteringMode = a} :: Eac3AtmosSettings)

-- | Specify whether your input audio has an additional center rear surround
-- channel matrix encoded into your left and right surround channels.
eac3AtmosSettings_surroundExMode :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosSurroundExMode)
eac3AtmosSettings_surroundExMode = Lens.lens (\Eac3AtmosSettings' {surroundExMode} -> surroundExMode) (\s@Eac3AtmosSettings' {} a -> s {surroundExMode = a} :: Eac3AtmosSettings)

-- | Specify whether MediaConvert should use any downmix metadata from your
-- input file. Keep the default value, Custom (SPECIFIED) to provide
-- downmix values in your job settings. Choose Follow source
-- (INITIALIZE_FROM_SOURCE) to use the metadata from your input. Related
-- settings--Use these settings to specify your downmix values: Left
-- only\/Right only surround (LoRoSurroundMixLevel), Left total\/Right
-- total surround (LtRtSurroundMixLevel), Left total\/Right total center
-- (LtRtCenterMixLevel), Left only\/Right only center (LoRoCenterMixLevel),
-- and Stereo downmix (StereoDownmix). When you keep Custom (SPECIFIED) for
-- Downmix control (DownmixControl) and you don\'t specify values for the
-- related settings, MediaConvert uses default values for those settings.
eac3AtmosSettings_downmixControl :: Lens.Lens' Eac3AtmosSettings (Prelude.Maybe Eac3AtmosDownmixControl)
eac3AtmosSettings_downmixControl = Lens.lens (\Eac3AtmosSettings' {downmixControl} -> downmixControl) (\s@Eac3AtmosSettings' {} a -> s {downmixControl = a} :: Eac3AtmosSettings)

instance Core.FromJSON Eac3AtmosSettings where
  parseJSON =
    Core.withObject
      "Eac3AtmosSettings"
      ( \x ->
          Eac3AtmosSettings'
            Prelude.<$> (x Core..:? "stereoDownmix")
            Prelude.<*> (x Core..:? "loRoCenterMixLevel")
            Prelude.<*> (x Core..:? "ltRtCenterMixLevel")
            Prelude.<*> (x Core..:? "dynamicRangeCompressionLine")
            Prelude.<*> (x Core..:? "ltRtSurroundMixLevel")
            Prelude.<*> (x Core..:? "loRoSurroundMixLevel")
            Prelude.<*> (x Core..:? "dynamicRangeControl")
            Prelude.<*> (x Core..:? "bitstreamMode")
            Prelude.<*> (x Core..:? "dynamicRangeCompressionRf")
            Prelude.<*> (x Core..:? "codingMode")
            Prelude.<*> (x Core..:? "sampleRate")
            Prelude.<*> (x Core..:? "speechThreshold")
            Prelude.<*> (x Core..:? "bitrate")
            Prelude.<*> (x Core..:? "dialogueIntelligence")
            Prelude.<*> (x Core..:? "meteringMode")
            Prelude.<*> (x Core..:? "surroundExMode")
            Prelude.<*> (x Core..:? "downmixControl")
      )

instance Prelude.Hashable Eac3AtmosSettings

instance Prelude.NFData Eac3AtmosSettings

instance Core.ToJSON Eac3AtmosSettings where
  toJSON Eac3AtmosSettings' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("stereoDownmix" Core..=) Prelude.<$> stereoDownmix,
            ("loRoCenterMixLevel" Core..=)
              Prelude.<$> loRoCenterMixLevel,
            ("ltRtCenterMixLevel" Core..=)
              Prelude.<$> ltRtCenterMixLevel,
            ("dynamicRangeCompressionLine" Core..=)
              Prelude.<$> dynamicRangeCompressionLine,
            ("ltRtSurroundMixLevel" Core..=)
              Prelude.<$> ltRtSurroundMixLevel,
            ("loRoSurroundMixLevel" Core..=)
              Prelude.<$> loRoSurroundMixLevel,
            ("dynamicRangeControl" Core..=)
              Prelude.<$> dynamicRangeControl,
            ("bitstreamMode" Core..=) Prelude.<$> bitstreamMode,
            ("dynamicRangeCompressionRf" Core..=)
              Prelude.<$> dynamicRangeCompressionRf,
            ("codingMode" Core..=) Prelude.<$> codingMode,
            ("sampleRate" Core..=) Prelude.<$> sampleRate,
            ("speechThreshold" Core..=)
              Prelude.<$> speechThreshold,
            ("bitrate" Core..=) Prelude.<$> bitrate,
            ("dialogueIntelligence" Core..=)
              Prelude.<$> dialogueIntelligence,
            ("meteringMode" Core..=) Prelude.<$> meteringMode,
            ("surroundExMode" Core..=)
              Prelude.<$> surroundExMode,
            ("downmixControl" Core..=)
              Prelude.<$> downmixControl
          ]
      )
