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
-- Module      : Network.AWS.Location.ListDevicePositions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- A batch request to retrieve all device positions.
--
-- This operation returns paginated results.
module Network.AWS.Location.ListDevicePositions
  ( -- * Creating a Request
    ListDevicePositions (..),
    newListDevicePositions,

    -- * Request Lenses
    listDevicePositions_nextToken,
    listDevicePositions_maxResults,
    listDevicePositions_trackerName,

    -- * Destructuring the Response
    ListDevicePositionsResponse (..),
    newListDevicePositionsResponse,

    -- * Response Lenses
    listDevicePositionsResponse_nextToken,
    listDevicePositionsResponse_httpStatus,
    listDevicePositionsResponse_entries,
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Lens as Lens
import Network.AWS.Location.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDevicePositions' smart constructor.
data ListDevicePositions = ListDevicePositions'
  { -- | The pagination token specifying which page of results to return in the
    -- response. If no token is provided, the default page is the first page.
    --
    -- Default value: @null@
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An optional limit for the number of entries returned in a single call.
    --
    -- Default value: @100@
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The tracker resource containing the requested devices.
    trackerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDevicePositions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDevicePositions_nextToken' - The pagination token specifying which page of results to return in the
-- response. If no token is provided, the default page is the first page.
--
-- Default value: @null@
--
-- 'maxResults', 'listDevicePositions_maxResults' - An optional limit for the number of entries returned in a single call.
--
-- Default value: @100@
--
-- 'trackerName', 'listDevicePositions_trackerName' - The tracker resource containing the requested devices.
newListDevicePositions ::
  -- | 'trackerName'
  Prelude.Text ->
  ListDevicePositions
newListDevicePositions pTrackerName_ =
  ListDevicePositions'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      trackerName = pTrackerName_
    }

-- | The pagination token specifying which page of results to return in the
-- response. If no token is provided, the default page is the first page.
--
-- Default value: @null@
listDevicePositions_nextToken :: Lens.Lens' ListDevicePositions (Prelude.Maybe Prelude.Text)
listDevicePositions_nextToken = Lens.lens (\ListDevicePositions' {nextToken} -> nextToken) (\s@ListDevicePositions' {} a -> s {nextToken = a} :: ListDevicePositions)

-- | An optional limit for the number of entries returned in a single call.
--
-- Default value: @100@
listDevicePositions_maxResults :: Lens.Lens' ListDevicePositions (Prelude.Maybe Prelude.Natural)
listDevicePositions_maxResults = Lens.lens (\ListDevicePositions' {maxResults} -> maxResults) (\s@ListDevicePositions' {} a -> s {maxResults = a} :: ListDevicePositions)

-- | The tracker resource containing the requested devices.
listDevicePositions_trackerName :: Lens.Lens' ListDevicePositions Prelude.Text
listDevicePositions_trackerName = Lens.lens (\ListDevicePositions' {trackerName} -> trackerName) (\s@ListDevicePositions' {} a -> s {trackerName = a} :: ListDevicePositions)

instance Core.AWSPager ListDevicePositions where
  page rq rs
    | Core.stop
        ( rs
            Lens.^? listDevicePositionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Core.stop
        (rs Lens.^. listDevicePositionsResponse_entries) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Prelude.& listDevicePositions_nextToken
          Lens..~ rs
          Lens.^? listDevicePositionsResponse_nextToken
            Prelude.. Lens._Just

instance Core.AWSRequest ListDevicePositions where
  type
    AWSResponse ListDevicePositions =
      ListDevicePositionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDevicePositionsResponse'
            Prelude.<$> (x Core..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Core..?> "Entries" Core..!@ Prelude.mempty)
      )

instance Prelude.Hashable ListDevicePositions

instance Prelude.NFData ListDevicePositions

instance Core.ToHeaders ListDevicePositions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON ListDevicePositions where
  toJSON ListDevicePositions' {..} =
    Core.object
      ( Prelude.catMaybes
          [ ("NextToken" Core..=) Prelude.<$> nextToken,
            ("MaxResults" Core..=) Prelude.<$> maxResults
          ]
      )

instance Core.ToPath ListDevicePositions where
  toPath ListDevicePositions' {..} =
    Prelude.mconcat
      [ "/tracking/v0/trackers/",
        Core.toBS trackerName,
        "/list-positions"
      ]

instance Core.ToQuery ListDevicePositions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListDevicePositionsResponse' smart constructor.
data ListDevicePositionsResponse = ListDevicePositionsResponse'
  { -- | A pagination token indicating there are additional pages available. You
    -- can use the token in a following request to fetch the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Contains details about each device\'s last known position. These details
    -- includes the device ID, the time when the position was sampled on the
    -- device, the time that the service received the update, and the most
    -- recent coordinates.
    entries :: [ListDevicePositionsResponseEntry]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ListDevicePositionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDevicePositionsResponse_nextToken' - A pagination token indicating there are additional pages available. You
-- can use the token in a following request to fetch the next set of
-- results.
--
-- 'httpStatus', 'listDevicePositionsResponse_httpStatus' - The response's http status code.
--
-- 'entries', 'listDevicePositionsResponse_entries' - Contains details about each device\'s last known position. These details
-- includes the device ID, the time when the position was sampled on the
-- device, the time that the service received the update, and the most
-- recent coordinates.
newListDevicePositionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDevicePositionsResponse
newListDevicePositionsResponse pHttpStatus_ =
  ListDevicePositionsResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      entries = Prelude.mempty
    }

-- | A pagination token indicating there are additional pages available. You
-- can use the token in a following request to fetch the next set of
-- results.
listDevicePositionsResponse_nextToken :: Lens.Lens' ListDevicePositionsResponse (Prelude.Maybe Prelude.Text)
listDevicePositionsResponse_nextToken = Lens.lens (\ListDevicePositionsResponse' {nextToken} -> nextToken) (\s@ListDevicePositionsResponse' {} a -> s {nextToken = a} :: ListDevicePositionsResponse)

-- | The response's http status code.
listDevicePositionsResponse_httpStatus :: Lens.Lens' ListDevicePositionsResponse Prelude.Int
listDevicePositionsResponse_httpStatus = Lens.lens (\ListDevicePositionsResponse' {httpStatus} -> httpStatus) (\s@ListDevicePositionsResponse' {} a -> s {httpStatus = a} :: ListDevicePositionsResponse)

-- | Contains details about each device\'s last known position. These details
-- includes the device ID, the time when the position was sampled on the
-- device, the time that the service received the update, and the most
-- recent coordinates.
listDevicePositionsResponse_entries :: Lens.Lens' ListDevicePositionsResponse [ListDevicePositionsResponseEntry]
listDevicePositionsResponse_entries = Lens.lens (\ListDevicePositionsResponse' {entries} -> entries) (\s@ListDevicePositionsResponse' {} a -> s {entries = a} :: ListDevicePositionsResponse) Prelude.. Lens.coerced

instance Prelude.NFData ListDevicePositionsResponse
