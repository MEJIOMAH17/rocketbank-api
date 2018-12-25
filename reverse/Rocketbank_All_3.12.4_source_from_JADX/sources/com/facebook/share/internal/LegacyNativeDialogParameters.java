package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

public class LegacyNativeDialogParameters {
    private static Bundle create(ShareVideoContent shareVideoContent, boolean z) {
        return null;
    }

    public static Bundle create(UUID uuid, ShareContent shareContent, boolean z) {
        Validate.notNull(shareContent, "shareContent");
        Validate.notNull(uuid, "callId");
        if (shareContent instanceof ShareLinkContent) {
            return create((ShareLinkContent) shareContent, z);
        }
        if (shareContent instanceof SharePhotoContent) {
            SharePhotoContent sharePhotoContent = (SharePhotoContent) shareContent;
            return create(sharePhotoContent, ShareInternalUtility.getPhotoUrls(sharePhotoContent, uuid), z);
        } else if (shareContent instanceof ShareVideoContent) {
            return create((ShareVideoContent) shareContent, z);
        } else {
            if (!(shareContent instanceof ShareOpenGraphContent)) {
                return null;
            }
            ShareOpenGraphContent shareOpenGraphContent = (ShareOpenGraphContent) shareContent;
            try {
                return create(shareOpenGraphContent, ShareInternalUtility.toJSONObjectForCall(uuid, shareOpenGraphContent), z);
            } catch (UUID uuid2) {
                z = new StringBuilder("Unable to create a JSON Object from the provided ShareOpenGraphContent: ");
                z.append(uuid2.getMessage());
                throw new FacebookException(z.toString());
            }
        }
    }

    private static Bundle create(ShareLinkContent shareLinkContent, boolean z) {
        z = createBaseParameters(shareLinkContent, z);
        Utility.putNonEmptyString(z, ShareConstants.LEGACY_TITLE, shareLinkContent.getContentTitle());
        Utility.putNonEmptyString(z, ShareConstants.LEGACY_DESCRIPTION, shareLinkContent.getContentDescription());
        Utility.putUri(z, ShareConstants.LEGACY_IMAGE, shareLinkContent.getImageUrl());
        return z;
    }

    private static Bundle create(SharePhotoContent sharePhotoContent, List<String> list, boolean z) {
        sharePhotoContent = createBaseParameters(sharePhotoContent, z);
        sharePhotoContent.putStringArrayList(ShareConstants.LEGACY_PHOTOS, new ArrayList(list));
        return sharePhotoContent;
    }

    private static Bundle create(ShareOpenGraphContent shareOpenGraphContent, JSONObject jSONObject, boolean z) {
        z = createBaseParameters(shareOpenGraphContent, z);
        Utility.putNonEmptyString(z, ShareConstants.LEGACY_PREVIEW_PROPERTY_NAME, shareOpenGraphContent.getPreviewPropertyName());
        Utility.putNonEmptyString(z, ShareConstants.LEGACY_ACTION_TYPE, shareOpenGraphContent.getAction().getActionType());
        Utility.putNonEmptyString(z, ShareConstants.LEGACY_ACTION, jSONObject.toString());
        return z;
    }

    private static Bundle createBaseParameters(ShareContent shareContent, boolean z) {
        Bundle bundle = new Bundle();
        Utility.putUri(bundle, ShareConstants.LEGACY_LINK, shareContent.getContentUrl());
        Utility.putNonEmptyString(bundle, ShareConstants.LEGACY_PLACE_TAG, shareContent.getPlaceId());
        Utility.putNonEmptyString(bundle, ShareConstants.LEGACY_REF, shareContent.getRef());
        bundle.putBoolean(ShareConstants.LEGACY_DATA_FAILURES_FATAL, z);
        Collection peopleIds = shareContent.getPeopleIds();
        if (!Utility.isNullOrEmpty(peopleIds)) {
            bundle.putStringArrayList(ShareConstants.LEGACY_FRIEND_TAGS, new ArrayList(peopleIds));
        }
        return bundle;
    }
}
