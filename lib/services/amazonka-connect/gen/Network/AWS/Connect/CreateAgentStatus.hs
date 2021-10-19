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
-- Module      : Network.AWS.Connect.CreateAgentStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to
-- change.
--
-- Creates an agent status for the specified Amazon Connect instance.
module Network.AWS.Connect.CreateAgentStatus
  ( -- * Creating a Request
    CreateAgentStatus (..),
    newCreateAgentStatus,

    -- * Request Lenses
    createAgentStatus_displayOrder,
    createAgentStatus_description,
    createAgentStatus_tags,
    createAgentStatus_instanceId,
    createAgentStatus_name,
    createAgentStatus_state,

    -- * Destructuring the Response
    CreateAgentStatusResponse (..),
    newCreateAgentStatusResponse,

    -- * Response Lenses
    createAgentStatusResponse_agentStatusId,
    createAgentStatusResponse_agentStatusARN,
    createAgentStatusResponse_httpStatus,
  )
where

import Network.AWS.Connect.Types
import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateAgentStatus' smart constructor.
data CreateAgentStatus = CreateAgentStatus'
  { -- | The display order of the status.
    displayOrder :: Prelude.Maybe Prelude.Natural,
    -- | The description of the status.
    description :: Prelude.Maybe Prelude.Text,
    -- | One or more tags.
    tags :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The identifier of the Amazon Connect instance. You can find the
    -- instanceId in the ARN of the instance.
    instanceId :: Prelude.Text,
    -- | The name of the status.
    name :: Prelude.Text,
    -- | The state of the status.
    state :: AgentStatusState
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAgentStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'displayOrder', 'createAgentStatus_displayOrder' - The display order of the status.
--
-- 'description', 'createAgentStatus_description' - The description of the status.
--
-- 'tags', 'createAgentStatus_tags' - One or more tags.
--
-- 'instanceId', 'createAgentStatus_instanceId' - The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
--
-- 'name', 'createAgentStatus_name' - The name of the status.
--
-- 'state', 'createAgentStatus_state' - The state of the status.
newCreateAgentStatus ::
  -- | 'instanceId'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'state'
  AgentStatusState ->
  CreateAgentStatus
newCreateAgentStatus pInstanceId_ pName_ pState_ =
  CreateAgentStatus'
    { displayOrder = Prelude.Nothing,
      description = Prelude.Nothing,
      tags = Prelude.Nothing,
      instanceId = pInstanceId_,
      name = pName_,
      state = pState_
    }

-- | The display order of the status.
createAgentStatus_displayOrder :: Lens.Lens' CreateAgentStatus (Prelude.Maybe Prelude.Natural)
createAgentStatus_displayOrder = Lens.lens (\CreateAgentStatus' {displayOrder} -> displayOrder) (\s@CreateAgentStatus' {} a -> s {displayOrder = a} :: CreateAgentStatus)

-- | The description of the status.
createAgentStatus_description :: Lens.Lens' CreateAgentStatus (Prelude.Maybe Prelude.Text)
createAgentStatus_description = Lens.lens (\CreateAgentStatus' {description} -> description) (\s@CreateAgentStatus' {} a -> s {description = a} :: CreateAgentStatus)

-- | One or more tags.
createAgentStatus_tags :: Lens.Lens' CreateAgentStatus (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createAgentStatus_tags = Lens.lens (\CreateAgentStatus' {tags} -> tags) (\s@CreateAgentStatus' {} a -> s {tags = a} :: CreateAgentStatus) Prelude.. Lens.mapping Lens.coerced

-- | The identifier of the Amazon Connect instance. You can find the
-- instanceId in the ARN of the instance.
createAgentStatus_instanceId :: Lens.Lens' CreateAgentStatus Prelude.Text
createAgentStatus_instanceId = Lens.lens (\CreateAgentStatus' {instanceId} -> instanceId) (\s@CreateAgentStatus' {} a -> s {instanceId = a} :: CreateAgentStatus)

-- | The name of the status.
createAgentStatus_name :: Lens.Lens' CreateAgentStatus Prelude.Text
createAgentStatus_name = Lens.lens (\CreateAgentStatus' {name} -> name) (\s@CreateAgentStatus' {} a -> s {name = a} :: CreateAgentStatus)

-- | The state of the status.
createAgentStatus_state :: Lens.Lens' CreateAgentStatus AgentStatusState
createAgentStatus_state = Lens.lens (\CreateAgentStatus' {state} -> state) (\s@CreateAgentStatus' {} a -> s {state = a} :: CreateAgentStatus)

instance Core.AWSRequest CreateAgentStatus where
  type
    AWSResponse CreateAgentStatus =
      CreateAgentStatusResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateAgentStatusResponse'
            Prelude.<$> (x Core..?> "AgentStatusId")
            Prelude.<*> (x Core..?> "AgentStatusARN")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateAgentStatus

instance Prelude.NFData CreateAgentStatus

instance Core.ToHeaders CreateAgentStatus where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateAgentStatus where
  toJSON CreateAgentStatus' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("DisplayOrder" Core..=) Prelude.<$> displayOrder,
            ("Description" Core..=) Prelude.<$> description,
            ("Tags" Core..=) Prelude.<$> tags,
            Prelude.Just ("Name" Core..= name),
            Prelude.Just ("State" Core..= state)
          ]
      )

instance Core.ToPath CreateAgentStatus where
  toPath CreateAgentStatus' {..} =
    Prelude.mconcat
      ["/agent-status/", Core.toBS instanceId]

instance Core.ToQuery CreateAgentStatus where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateAgentStatusResponse' smart constructor.
data CreateAgentStatusResponse = CreateAgentStatusResponse'
  { -- | The identifier of the agent status.
    agentStatusId :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the agent status.
    agentStatusARN :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateAgentStatusResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'agentStatusId', 'createAgentStatusResponse_agentStatusId' - The identifier of the agent status.
--
-- 'agentStatusARN', 'createAgentStatusResponse_agentStatusARN' - The Amazon Resource Name (ARN) of the agent status.
--
-- 'httpStatus', 'createAgentStatusResponse_httpStatus' - The response's http status code.
newCreateAgentStatusResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateAgentStatusResponse
newCreateAgentStatusResponse pHttpStatus_ =
  CreateAgentStatusResponse'
    { agentStatusId =
        Prelude.Nothing,
      agentStatusARN = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The identifier of the agent status.
createAgentStatusResponse_agentStatusId :: Lens.Lens' CreateAgentStatusResponse (Prelude.Maybe Prelude.Text)
createAgentStatusResponse_agentStatusId = Lens.lens (\CreateAgentStatusResponse' {agentStatusId} -> agentStatusId) (\s@CreateAgentStatusResponse' {} a -> s {agentStatusId = a} :: CreateAgentStatusResponse)

-- | The Amazon Resource Name (ARN) of the agent status.
createAgentStatusResponse_agentStatusARN :: Lens.Lens' CreateAgentStatusResponse (Prelude.Maybe Prelude.Text)
createAgentStatusResponse_agentStatusARN = Lens.lens (\CreateAgentStatusResponse' {agentStatusARN} -> agentStatusARN) (\s@CreateAgentStatusResponse' {} a -> s {agentStatusARN = a} :: CreateAgentStatusResponse)

-- | The response's http status code.
createAgentStatusResponse_httpStatus :: Lens.Lens' CreateAgentStatusResponse Prelude.Int
createAgentStatusResponse_httpStatus = Lens.lens (\CreateAgentStatusResponse' {httpStatus} -> httpStatus) (\s@CreateAgentStatusResponse' {} a -> s {httpStatus = a} :: CreateAgentStatusResponse)

instance Prelude.NFData CreateAgentStatusResponse
