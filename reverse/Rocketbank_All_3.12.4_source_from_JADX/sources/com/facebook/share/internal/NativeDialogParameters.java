package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareMediaContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

public class NativeDialogParameters {
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
            ShareVideoContent shareVideoContent = (ShareVideoContent) shareContent;
            return create(shareVideoContent, ShareInternalUtility.getVideoUrl(shareVideoContent, uuid), z);
        } else if (shareContent instanceof ShareOpenGraphContent) {
            ShareOpenGraphContent shareOpenGraphContent = (ShareOpenGraphContent) shareContent;
            try {
                return create(shareOpenGraphContent, ShareInternalUtility.removeNamespacesFromOGJsonObject(ShareInternalUtility.toJSONObjectForCall(uuid, shareOpenGraphContent), false), z);
            } catch (UUID uuid2) {
                z = new StringBuilder("Unable to create a JSON Object from the provided ShareOpenGraphContent: ");
                z.append(uuid2.getMessage());
                throw new FacebookException(z.toString());
            }
        } else if (!(shareContent instanceof ShareMediaContent)) {
            return null;
        } else {
            ShareMediaContent shareMediaContent = (ShareMediaContent) shareContent;
            return create(shareMediaContent, ShareInternalUtility.getMediaInfos(shareMediaContent, uuid2), z);
        }
    }

    private static Bundle create(ShareLinkContent shareLinkContent, boolean z) {
        z = createBaseParameters(shareLinkContent, z);
        Utility.putNonEmptyString(z, ShareConstants.TITLE, shareLinkContent.getContentTitle());
        Utility.putNonEmptyString(z, ShareConstants.DESCRIPTION, shareLinkContent.getContentDescription());
        Utility.putUri(z, ShareConstants.IMAGE_URL, shareLinkContent.getImageUrl());
        Utility.putNonEmptyString(z, ShareConstants.QUOTE, shareLinkContent.getQuote());
        return z;
    }

    private static Bundle create(SharePhotoContent sharePhotoContent, List<String> list, boolean z) {
        sharePhotoContent = createBaseParameters(sharePhotoContent, z);
        sharePhotoContent.putStringArrayList(ShareConstants.PHOTOS, new ArrayList(list));
        return sharePhotoContent;
    }

    private static Bundle create(ShareVideoContent shareVideoContent, String str, boolean z) {
        z = createBaseParameters(shareVideoContent, z);
        Utility.putNonEmptyString(z, ShareConstants.TITLE, shareVideoContent.getContentTitle());
        Utility.putNonEmptyString(z, ShareConstants.DESCRIPTION, shareVideoContent.getContentDescription());
        Utility.putNonEmptyString(z, ShareConstants.VIDEO_URL, str);
        return z;
    }

    private static Bundle create(ShareMediaContent shareMediaContent, List<Bundle> list, boolean z) {
        shareMediaContent = createBaseParameters(shareMediaContent, z);
        shareMediaContent.putParcelableArrayList(ShareConstants.MEDIA, new ArrayList(list));
        return shareMediaContent;
    }

    private static Bundle create(ShareOpenGraphContent shareOpenGraphContent, JSONObject jSONObject, boolean z) {
        z = createBaseParameters(shareOpenGraphContent, z);
        Utility.putNonEmptyString(z, ShareConstants.PREVIEW_PROPERTY_NAME, (String) ShareInternalUtility.getFieldNameAndNamespaceFromFullName(shareOpenGraphContent.getPreviewPropertyName()).second);
        Utility.putNonEmptyString(z, ShareConstants.ACTION_TYPE, shareOpenGraphContent.getAction().getActionType());
        Utility.putNonEmptyString(z, ShareConstants.ACTION, jSONObject.toString());
        return z;
    }

    private static Bundle createBaseParameters(ShareContent shareContent, boolean z) {
        Bundle bundle = new Bundle();
        Utility.putUri(bundle, ShareConstants.CONTENT_URL, shareContent.getContentUrl());
        Utility.putNonEmptyString(bundle, ShareConstants.PLACE_ID, shareContent.getPlaceId());
        Utility.putNonEmptyString(bundle, ShareConstants.REF, shareContent.getRef());
        bundle.putBoolean(ShareConstants.DATA_FAILURES_FATAL, z);
        Collection peopleIds = shareContent.getPeopleIds();
        if (!Utility.isNullOrEmpty(peopleIds)) {
            bundle.putStringArrayList(ShareConstants.PEOPLE_IDS, new ArrayList(peopleIds));
        }
        shareContent = shareContent.getShareHashtag();
        if (shareContent != null) {
            Utility.putNonEmptyString(bundle, ShareConstants.HASHTAG, shareContent.getHashtag());
        }
        return bundle;
    }
}
