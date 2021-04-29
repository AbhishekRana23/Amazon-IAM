{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.BatchGetDeployments
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more deployments. The maximum number of
-- deployments that can be returned is 25.
module Network.AWS.CodeDeploy.BatchGetDeployments
  ( -- * Creating a Request
    BatchGetDeployments (..),
    newBatchGetDeployments,

    -- * Request Lenses
    batchGetDeployments_deploymentIds,

    -- * Destructuring the Response
    BatchGetDeploymentsResponse (..),
    newBatchGetDeploymentsResponse,

    -- * Response Lenses
    batchGetDeploymentsResponse_deploymentsInfo,
    batchGetDeploymentsResponse_httpStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of a @BatchGetDeployments@ operation.
--
-- /See:/ 'newBatchGetDeployments' smart constructor.
data BatchGetDeployments = BatchGetDeployments'
  { -- | A list of deployment IDs, separated by spaces. The maximum number of
    -- deployment IDs you can specify is 25.
    deploymentIds :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'BatchGetDeployments' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentIds', 'batchGetDeployments_deploymentIds' - A list of deployment IDs, separated by spaces. The maximum number of
-- deployment IDs you can specify is 25.
newBatchGetDeployments ::
  BatchGetDeployments
newBatchGetDeployments =
  BatchGetDeployments'
    { deploymentIds =
        Prelude.mempty
    }

-- | A list of deployment IDs, separated by spaces. The maximum number of
-- deployment IDs you can specify is 25.
batchGetDeployments_deploymentIds :: Lens.Lens' BatchGetDeployments [Prelude.Text]
batchGetDeployments_deploymentIds = Lens.lens (\BatchGetDeployments' {deploymentIds} -> deploymentIds) (\s@BatchGetDeployments' {} a -> s {deploymentIds = a} :: BatchGetDeployments) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest BatchGetDeployments where
  type
    Rs BatchGetDeployments =
      BatchGetDeploymentsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchGetDeploymentsResponse'
            Prelude.<$> ( x Prelude..?> "deploymentsInfo"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchGetDeployments

instance Prelude.NFData BatchGetDeployments

instance Prelude.ToHeaders BatchGetDeployments where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "CodeDeploy_20141006.BatchGetDeployments" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON BatchGetDeployments where
  toJSON BatchGetDeployments' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("deploymentIds" Prelude..= deploymentIds)
          ]
      )

instance Prelude.ToPath BatchGetDeployments where
  toPath = Prelude.const "/"

instance Prelude.ToQuery BatchGetDeployments where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the output of a @BatchGetDeployments@ operation.
--
-- /See:/ 'newBatchGetDeploymentsResponse' smart constructor.
data BatchGetDeploymentsResponse = BatchGetDeploymentsResponse'
  { -- | Information about the deployments.
    deploymentsInfo :: Prelude.Maybe [DeploymentInfo],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'BatchGetDeploymentsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deploymentsInfo', 'batchGetDeploymentsResponse_deploymentsInfo' - Information about the deployments.
--
-- 'httpStatus', 'batchGetDeploymentsResponse_httpStatus' - The response's http status code.
newBatchGetDeploymentsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchGetDeploymentsResponse
newBatchGetDeploymentsResponse pHttpStatus_ =
  BatchGetDeploymentsResponse'
    { deploymentsInfo =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the deployments.
batchGetDeploymentsResponse_deploymentsInfo :: Lens.Lens' BatchGetDeploymentsResponse (Prelude.Maybe [DeploymentInfo])
batchGetDeploymentsResponse_deploymentsInfo = Lens.lens (\BatchGetDeploymentsResponse' {deploymentsInfo} -> deploymentsInfo) (\s@BatchGetDeploymentsResponse' {} a -> s {deploymentsInfo = a} :: BatchGetDeploymentsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
batchGetDeploymentsResponse_httpStatus :: Lens.Lens' BatchGetDeploymentsResponse Prelude.Int
batchGetDeploymentsResponse_httpStatus = Lens.lens (\BatchGetDeploymentsResponse' {httpStatus} -> httpStatus) (\s@BatchGetDeploymentsResponse' {} a -> s {httpStatus = a} :: BatchGetDeploymentsResponse)

instance Prelude.NFData BatchGetDeploymentsResponse
