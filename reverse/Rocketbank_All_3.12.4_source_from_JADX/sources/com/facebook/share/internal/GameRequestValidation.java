package com.facebook.share.internal;

import com.facebook.internal.Validate;
import com.facebook.share.model.GameRequestContent;
import com.facebook.share.model.GameRequestContent.ActionType;

public class GameRequestValidation {
    public static void validate(GameRequestContent gameRequestContent) {
        int i;
        Validate.notNull(gameRequestContent.getMessage(), ShareConstants.WEB_DIALOG_PARAM_MESSAGE);
        int i2 = 0;
        int i3 = gameRequestContent.getObjectId() != null ? 1 : 0;
        if (gameRequestContent.getActionType() != ActionType.ASKFOR) {
            if (gameRequestContent.getActionType() != ActionType.SEND) {
                i = 0;
                if ((i3 ^ i) == 0) {
                    throw new IllegalArgumentException("Object id should be provided if and only if action type is send or askfor");
                }
                if (gameRequestContent.getRecipients() != null) {
                    i2 = 1;
                }
                if (gameRequestContent.getSuggestions() != null) {
                    i2++;
                }
                if (gameRequestContent.getFilters() != null) {
                    i2++;
                }
                if (i2 > 1) {
                    throw new IllegalArgumentException("Parameters to, filters and suggestions are mutually exclusive");
                }
                return;
            }
        }
        i = 1;
        if ((i3 ^ i) == 0) {
            if (gameRequestContent.getRecipients() != null) {
                i2 = 1;
            }
            if (gameRequestContent.getSuggestions() != null) {
                i2++;
            }
            if (gameRequestContent.getFilters() != null) {
                i2++;
            }
            if (i2 > 1) {
                throw new IllegalArgumentException("Parameters to, filters and suggestions are mutually exclusive");
            }
            return;
        }
        throw new IllegalArgumentException("Object id should be provided if and only if action type is send or askfor");
    }
}
