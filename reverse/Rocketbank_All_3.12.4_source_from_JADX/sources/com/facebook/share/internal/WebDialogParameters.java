package com.facebook.share.internal;

import android.os.Bundle;
import com.facebook.FacebookException;
import com.facebook.internal.Utility;
import com.facebook.internal.Utility.Mapper;
import com.facebook.share.model.AppGroupCreationContent;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.ShareOpenGraphContent;
import com.facebook.share.model.SharePhoto;
import com.facebook.share.model.SharePhotoContent;
import java.util.Locale;

public class WebDialogParameters {

    /* renamed from: com.facebook.share.internal.WebDialogParameters$1 */
    static class C10651 implements Mapper<SharePhoto, String> {
        C10651() {
        }

        public final String apply(SharePhoto sharePhoto) {
            return sharePhoto.getImageUrl().toString();
        }
    }

    public static Bundle create(AppGroupCreationContent appGroupCreationContent) {
        Bundle bundle = new Bundle();
        Utility.putNonEmptyString(bundle, "name", appGroupCreationContent.getName());
        Utility.putNonEmptyString(bundle, "description", appGroupCreationContent.getDescription());
        appGroupCreationContent = appGroupCreationContent.getAppGroupPrivacy();
        if (appGroupCreationContent != null) {
            Utility.putNonEmptyString(bundle, ShareConstants.WEB_DIALOG_PARAM_PRIVACY, appGroupCreationContent.toString().toLowerCase(Locale.ENGLISH));
        }
        return bundle;
    }

    public static Bundle create(GameRequestContent gameRequestContent) {
        Bundle bundle = new Bundle();
        Utility.putNonEmptyString(bundle, ShareConstants.WEB_DIALOG_PARAM_MESSAGE, gameRequestContent.getMessage());
        Utility.putCommaSeparatedStringList(bundle, "to", gameRequestContent.getRecipients());
        Utility.putNonEmptyString(bundle, ShareConstants.WEB_DIALOG_PARAM_TITLE, gameRequestContent.getTitle());
        Utility.putNonEmptyString(bundle, ShareConstants.WEB_DIALOG_PARAM_DATA, gameRequestContent.getData());
        if (gameRequestContent.getActionType() != null) {
            Utility.putNonEmptyString(bundle, ShareConstants.WEB_DIALOG_PARAM_ACTION_TYPE, gameRequestContent.getActionType().toString().toLowerCase(Locale.ENGLISH));
        }
        Utility.putNonEmptyString(bundle, "object_id", gameRequestContent.getObjectId());
        if (gameRequestContent.getFilters() != null) {
            Utility.putNonEmptyString(bundle, ShareConstants.WEB_DIALOG_PARAM_FILTERS, gameRequestContent.getFilters().toString().toLowerCase(Locale.ENGLISH));
        }
        Utility.putCommaSeparatedStringList(bundle, ShareConstants.WEB_DIALOG_PARAM_SUGGESTIONS, gameRequestContent.getSuggestions());
        return bundle;
    }

    public static Bundle create(ShareLinkContent shareLinkContent) {
        Bundle createBaseParameters = createBaseParameters(shareLinkContent);
        Utility.putUri(createBaseParameters, ShareConstants.WEB_DIALOG_PARAM_HREF, shareLinkContent.getContentUrl());
        Utility.putNonEmptyString(createBaseParameters, ShareConstants.WEB_DIALOG_PARAM_QUOTE, shareLinkContent.getQuote());
        return createBaseParameters;
    }

    public static Bundle create(ShareOpenGraphContent shareOpenGraphContent) {
        Bundle createBaseParameters = createBaseParameters(shareOpenGraphContent);
        Utility.putNonEmptyString(createBaseParameters, ShareConstants.WEB_DIALOG_PARAM_ACTION_TYPE, shareOpenGraphContent.getAction().getActionType());
        try {
            shareOpenGraphContent = ShareInternalUtility.removeNamespacesFromOGJsonObject(ShareInternalUtility.toJSONObjectForWeb(shareOpenGraphContent), false);
            if (shareOpenGraphContent != null) {
                Utility.putNonEmptyString(createBaseParameters, ShareConstants.WEB_DIALOG_PARAM_ACTION_PROPERTIES, shareOpenGraphContent.toString());
            }
            return createBaseParameters;
        } catch (Throwable e) {
            throw new FacebookException("Unable to serialize the ShareOpenGraphContent to JSON", e);
        }
    }

    public static Bundle create(SharePhotoContent sharePhotoContent) {
        Bundle createBaseParameters = createBaseParameters(sharePhotoContent);
        String[] strArr = new String[sharePhotoContent.getPhotos().size()];
        Utility.map(sharePhotoContent.getPhotos(), new C10651()).toArray(strArr);
        createBaseParameters.putStringArray(ShareConstants.WEB_DIALOG_PARAM_MEDIA, strArr);
        return createBaseParameters;
    }

    public static Bundle createBaseParameters(ShareContent shareContent) {
        Bundle bundle = new Bundle();
        shareContent = shareContent.getShareHashtag();
        if (shareContent != null) {
            Utility.putNonEmptyString(bundle, ShareConstants.WEB_DIALOG_PARAM_HASHTAG, shareContent.getHashtag());
        }
        return bundle;
    }

    public static Bundle createForFeed(ShareLinkContent shareLinkContent) {
        Bundle bundle = new Bundle();
        Utility.putNonEmptyString(bundle, "name", shareLinkContent.getContentTitle());
        Utility.putNonEmptyString(bundle, "description", shareLinkContent.getContentDescription());
        Utility.putNonEmptyString(bundle, "link", Utility.getUriString(shareLinkContent.getContentUrl()));
        Utility.putNonEmptyString(bundle, "picture", Utility.getUriString(shareLinkContent.getImageUrl()));
        Utility.putNonEmptyString(bundle, ShareConstants.WEB_DIALOG_PARAM_QUOTE, shareLinkContent.getQuote());
        if (shareLinkContent.getShareHashtag() != null) {
            Utility.putNonEmptyString(bundle, ShareConstants.WEB_DIALOG_PARAM_HASHTAG, shareLinkContent.getShareHashtag().getHashtag());
        }
        return bundle;
    }

    public static Bundle createForFeed(ShareFeedContent shareFeedContent) {
        Bundle bundle = new Bundle();
        Utility.putNonEmptyString(bundle, "to", shareFeedContent.getToId());
        Utility.putNonEmptyString(bundle, "link", shareFeedContent.getLink());
        Utility.putNonEmptyString(bundle, "picture", shareFeedContent.getPicture());
        Utility.putNonEmptyString(bundle, "source", shareFeedContent.getMediaSource());
        Utility.putNonEmptyString(bundle, "name", shareFeedContent.getLinkName());
        Utility.putNonEmptyString(bundle, ShareConstants.FEED_CAPTION_PARAM, shareFeedContent.getLinkCaption());
        Utility.putNonEmptyString(bundle, "description", shareFeedContent.getLinkDescription());
        return bundle;
    }
}
