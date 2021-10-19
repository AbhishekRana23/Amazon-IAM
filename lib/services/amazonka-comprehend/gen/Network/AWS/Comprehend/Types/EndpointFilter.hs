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
-- Module      : Network.AWS.Comprehend.Types.EndpointFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EndpointFilter where

import Network.AWS.Comprehend.Types.EndpointStatus
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The filter used to determine which endpoints are returned. You can
-- filter jobs on their name, model, status, or the date and time that they
-- were created. You can only set one filter at a time.
--
-- /See:/ 'newEndpointFilter' smart constructor.
data EndpointFilter = EndpointFilter'
  { -- | Specifies the status of the endpoint being returned. Possible values
    -- are: Creating, Ready, Updating, Deleting, Failed.
    status :: Prelude.Maybe EndpointStatus,
    -- | The Amazon Resource Number (ARN) of the model to which the endpoint is
    -- attached.
    modelArn :: Prelude.Maybe Prelude.Text,
    -- | Specifies a date after which the returned endpoint or endpoints were
    -- created.
    creationTimeAfter :: Prelude.Maybe Core.POSIX,
    -- | Specifies a date before which the returned endpoint or endpoints were
    -- created.
    creationTimeBefore :: Prelude.Maybe Core.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EndpointFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'endpointFilter_status' - Specifies the status of the endpoint being returned. Possible values
-- are: Creating, Ready, Updating, Deleting, Failed.
--
-- 'modelArn', 'endpointFilter_modelArn' - The Amazon Resource Number (ARN) of the model to which the endpoint is
-- attached.
--
-- 'creationTimeAfter', 'endpointFilter_creationTimeAfter' - Specifies a date after which the returned endpoint or endpoints were
-- created.
--
-- 'creationTimeBefore', 'endpointFilter_creationTimeBefore' - Specifies a date before which the returned endpoint or endpoints were
-- created.
newEndpointFilter ::
  EndpointFilter
newEndpointFilter =
  EndpointFilter'
    { status = Prelude.Nothing,
      modelArn = Prelude.Nothing,
      creationTimeAfter = Prelude.Nothing,
      creationTimeBefore = Prelude.Nothing
    }

-- | Specifies the status of the endpoint being returned. Possible values
-- are: Creating, Ready, Updating, Deleting, Failed.
endpointFilter_status :: Lens.Lens' EndpointFilter (Prelude.Maybe EndpointStatus)
endpointFilter_status = Lens.lens (\EndpointFilter' {status} -> status) (\s@EndpointFilter' {} a -> s {status = a} :: EndpointFilter)

-- | The Amazon Resource Number (ARN) of the model to which the endpoint is
-- attached.
endpointFilter_modelArn :: Lens.Lens' EndpointFilter (Prelude.Maybe Prelude.Text)
endpointFilter_modelArn = Lens.lens (\EndpointFilter' {modelArn} -> modelArn) (\s@EndpointFilter' {} a -> s {modelArn = a} :: EndpointFilter)

-- | Specifies a date after which the returned endpoint or endpoints were
-- created.
endpointFilter_creationTimeAfter :: Lens.Lens' EndpointFilter (Prelude.Maybe Prelude.UTCTime)
endpointFilter_creationTimeAfter = Lens.lens (\EndpointFilter' {creationTimeAfter} -> creationTimeAfter) (\s@EndpointFilter' {} a -> s {creationTimeAfter = a} :: EndpointFilter) Prelude.. Lens.mapping Core._Time

-- | Specifies a date before which the returned endpoint or endpoints were
-- created.
endpointFilter_creationTimeBefore :: Lens.Lens' EndpointFilter (Prelude.Maybe Prelude.UTCTime)
endpointFilter_creationTimeBefore = Lens.lens (\EndpointFilter' {creationTimeBefore} -> creationTimeBefore) (\s@EndpointFilter' {} a -> s {creationTimeBefore = a} :: EndpointFilter) Prelude.. Lens.mapping Core._Time

instance Prelude.Hashable EndpointFilter

instance Prelude.NFData EndpointFilter

instance Core.ToJSON EndpointFilter where
  toJSON EndpointFilter' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("Status" Core..=) Prelude.<$> status,
            ("ModelArn" Core..=) Prelude.<$> modelArn,
            ("CreationTimeAfter" Core..=)
              Prelude.<$> creationTimeAfter,
            ("CreationTimeBefore" Core..=)
              Prelude.<$> creationTimeBefore
          ]
      )
