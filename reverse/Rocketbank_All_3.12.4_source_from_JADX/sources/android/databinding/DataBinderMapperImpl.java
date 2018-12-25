package android.databinding;

import android.view.View;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import ru.rocketbank.core.databinding.ItemCalendarBinding;
import ru.rocketbank.core.databinding.WidgetAddressViewBinding;
import ru.rocketbank.core.databinding.WidgetCalendarViewBinding;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.databinding.ActivityApAddCardBinding;
import ru.rocketbank.r2d2.databinding.ActivityApManageCardBinding;
import ru.rocketbank.r2d2.databinding.ActivityCardLimitBinding;
import ru.rocketbank.r2d2.databinding.ActivityCardTransferAmountBinding;
import ru.rocketbank.r2d2.databinding.ActivityCardTransferProcessBinding;
import ru.rocketbank.r2d2.databinding.ActivityChargeNotificationBinding;
import ru.rocketbank.r2d2.databinding.ActivityDeliveryBinding;
import ru.rocketbank.r2d2.databinding.ActivityDiscountDetailsBinding;
import ru.rocketbank.r2d2.databinding.ActivityEnterCvvBinding;
import ru.rocketbank.r2d2.databinding.ActivityFirstRefillBinding;
import ru.rocketbank.r2d2.databinding.ActivityInviteFriendInfoBinding;
import ru.rocketbank.r2d2.databinding.ActivityNewPassportBinding;
import ru.rocketbank.r2d2.databinding.ActivityOperationModernReceiptBinding;
import ru.rocketbank.r2d2.databinding.ActivityOperationModernTagReceiptBinding;
import ru.rocketbank.r2d2.databinding.ActivityPdfViewBinding;
import ru.rocketbank.r2d2.databinding.ActivityPenaltyChargeBinding;
import ru.rocketbank.r2d2.databinding.ActivityReferenceBinding;
import ru.rocketbank.r2d2.databinding.ActivityReferencePdfBinding;
import ru.rocketbank.r2d2.databinding.ActivityRocketCafeBinding;
import ru.rocketbank.r2d2.databinding.ActivityRocketRubleInfoBinding;
import ru.rocketbank.r2d2.databinding.ActivitySalaryTariffInstructionBinding;
import ru.rocketbank.r2d2.databinding.ActivityShopCartBinding;
import ru.rocketbank.r2d2.databinding.ActivityShopDetailsBinding;
import ru.rocketbank.r2d2.databinding.ActivityShopInfoBinding;
import ru.rocketbank.r2d2.databinding.ActivityShopOrderBinding;
import ru.rocketbank.r2d2.databinding.ActivitySoundBinding;
import ru.rocketbank.r2d2.databinding.ActivitySpAddCardBinding;
import ru.rocketbank.r2d2.databinding.ActivityTariffsBinding;
import ru.rocketbank.r2d2.databinding.ActivityTaxChargeBinding;
import ru.rocketbank.r2d2.databinding.ActivityWebAuthBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsEmptyBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemChartBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemHeaderBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemMerchantOperationBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemOperationBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemSectionBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemSectionPersonBinding;
import ru.rocketbank.r2d2.databinding.AnalyticsItemTagOperationBinding;
import ru.rocketbank.r2d2.databinding.AtmsMapFragmentBinding;
import ru.rocketbank.r2d2.databinding.BankInfoBinding;
import ru.rocketbank.r2d2.databinding.BudgetTransferBinding;
import ru.rocketbank.r2d2.databinding.CardLimitItemBinding;
import ru.rocketbank.r2d2.databinding.CardTransferHeaderLayoutBindingImpl;
import ru.rocketbank.r2d2.databinding.CardTransferHeaderLayoutBindingLargeImpl;
import ru.rocketbank.r2d2.databinding.ChangeCodeActivityBinding;
import ru.rocketbank.r2d2.databinding.CorporateTransferBinding;
import ru.rocketbank.r2d2.databinding.DeliveryToolbarBinding;
import ru.rocketbank.r2d2.databinding.DialogNotificationViewBinding;
import ru.rocketbank.r2d2.databinding.DiscountCategoryItemBinding;
import ru.rocketbank.r2d2.databinding.DiscountGameItemBinding;
import ru.rocketbank.r2d2.databinding.DiscountsGridContainerBinding;
import ru.rocketbank.r2d2.databinding.DiscountsItemSelectedBinding;
import ru.rocketbank.r2d2.databinding.DiscountsNotSelectedBinding;
import ru.rocketbank.r2d2.databinding.DiscountsSelectedBinding;
import ru.rocketbank.r2d2.databinding.FeedItemAdsBinding;
import ru.rocketbank.r2d2.databinding.FeedItemApBinding;
import ru.rocketbank.r2d2.databinding.FeedItemChosenMonthCashbackBindingImpl;
import ru.rocketbank.r2d2.databinding.FeedItemChosenMonthCashbackBindingV21Impl;
import ru.rocketbank.r2d2.databinding.FeedItemDeliveryBinding;
import ru.rocketbank.r2d2.databinding.FeedItemMonthCashbackBinding;
import ru.rocketbank.r2d2.databinding.FeedItemNewPassportBinding;
import ru.rocketbank.r2d2.databinding.FeedItemOnetwotripBinding;
import ru.rocketbank.r2d2.databinding.FeedItemPushBinding;
import ru.rocketbank.r2d2.databinding.FeedItemSalaryTariffsBinding;
import ru.rocketbank.r2d2.databinding.FeedItemTransferToSafeAccountBinding;
import ru.rocketbank.r2d2.databinding.FingerprintDialogBinding;
import ru.rocketbank.r2d2.databinding.FragmentAnalyticsBaseBinding;
import ru.rocketbank.r2d2.databinding.FragmentBankTransferBinding;
import ru.rocketbank.r2d2.databinding.FragmentCardBinding;
import ru.rocketbank.r2d2.databinding.FragmentCardDetailBinding;
import ru.rocketbank.r2d2.databinding.FragmentCardblockBinding;
import ru.rocketbank.r2d2.databinding.FragmentChangeBinding;
import ru.rocketbank.r2d2.databinding.FragmentChangeCodewordBinding;
import ru.rocketbank.r2d2.databinding.FragmentCheckBinding;
import ru.rocketbank.r2d2.databinding.FragmentDeliveryDateBindingImpl;
import ru.rocketbank.r2d2.databinding.FragmentDeliveryDateBindingV21Impl;
import ru.rocketbank.r2d2.databinding.FragmentDeliveryMapBinding;
import ru.rocketbank.r2d2.databinding.FragmentDeliveryScheduledBinding;
import ru.rocketbank.r2d2.databinding.FragmentDiscountsBinding;
import ru.rocketbank.r2d2.databinding.FragmentFeedBinding;
import ru.rocketbank.r2d2.databinding.FragmentInputPhoneNumberBinding;
import ru.rocketbank.r2d2.databinding.FragmentInviteFriendsBinding;
import ru.rocketbank.r2d2.databinding.FragmentNewCardBinding;
import ru.rocketbank.r2d2.databinding.FragmentNewPassportStepBinding;
import ru.rocketbank.r2d2.databinding.FragmentNewSafeBinding;
import ru.rocketbank.r2d2.databinding.FragmentOpenSafeAccountBinding;
import ru.rocketbank.r2d2.databinding.FragmentProfileBinding;
import ru.rocketbank.r2d2.databinding.FragmentRocketRoubleBinding;
import ru.rocketbank.r2d2.databinding.FragmentShopFeedBinding;
import ru.rocketbank.r2d2.databinding.FragmentSmallAccountBinding;
import ru.rocketbank.r2d2.databinding.FragmentSmallAccountChooseBinding;
import ru.rocketbank.r2d2.databinding.FragmentTariffDetailsBinding;
import ru.rocketbank.r2d2.databinding.FragmentTransferBetweenCardsBinding;
import ru.rocketbank.r2d2.databinding.FriendsFragmentBinding;
import ru.rocketbank.r2d2.databinding.GkhLayputBinding;
import ru.rocketbank.r2d2.databinding.IncludeTabBinding;
import ru.rocketbank.r2d2.databinding.IncludeToolbarBinding;
import ru.rocketbank.r2d2.databinding.IndividualTransferBinding;
import ru.rocketbank.r2d2.databinding.InfoOnetwotripBinding;
import ru.rocketbank.r2d2.databinding.ItemAddressBinding;
import ru.rocketbank.r2d2.databinding.ItemDeliveryTimeIntervalBinding;
import ru.rocketbank.r2d2.databinding.LayoutCardWithActionsBinding;
import ru.rocketbank.r2d2.databinding.LayoutDialogChangeBinding;
import ru.rocketbank.r2d2.databinding.LayoutGeneralStatisticsBinding;
import ru.rocketbank.r2d2.databinding.LayoutMessageOutImageBinding;
import ru.rocketbank.r2d2.databinding.LayoutMessageOutOperationBinding;
import ru.rocketbank.r2d2.databinding.LayoutMessageOutTextBinding;
import ru.rocketbank.r2d2.databinding.LayoutMilesCompensationBinding;
import ru.rocketbank.r2d2.databinding.LayoutOperationActionBinding;
import ru.rocketbank.r2d2.databinding.LayoutOperationCategoryBinding;
import ru.rocketbank.r2d2.databinding.LayoutOperationDescriptionBinding;
import ru.rocketbank.r2d2.databinding.LayoutOperationIncommingBinding;
import ru.rocketbank.r2d2.databinding.LayoutOperationMapBinding;
import ru.rocketbank.r2d2.databinding.LayoutOperationMilesBinding;
import ru.rocketbank.r2d2.databinding.LayoutOperationOutgoingBinding;
import ru.rocketbank.r2d2.databinding.LayoutOperationSourceBinding;
import ru.rocketbank.r2d2.databinding.LayoutOperationStatMonthBinding;
import ru.rocketbank.r2d2.databinding.LayoutSoundItemBinding;
import ru.rocketbank.r2d2.databinding.LayoutStatisticsActionItemBinding;
import ru.rocketbank.r2d2.databinding.LayoutStatisticsItemBinding;
import ru.rocketbank.r2d2.databinding.LayoutStatisticsTotalItemBinding;
import ru.rocketbank.r2d2.databinding.LayoutToolbarWithButtonBindingImpl;
import ru.rocketbank.r2d2.databinding.LayoutToolbarWithButtonBindingV21Impl;
import ru.rocketbank.r2d2.databinding.ListItemCardDeleteBinding;
import ru.rocketbank.r2d2.databinding.ListItemCardHeaderBinding;
import ru.rocketbank.r2d2.databinding.ListItemCardLimitBinding;
import ru.rocketbank.r2d2.databinding.ParallaxHeaderBinding;
import ru.rocketbank.r2d2.databinding.ParallaxRoundImageItemBinding;
import ru.rocketbank.r2d2.databinding.PenaltyChargesFragmentBinding;
import ru.rocketbank.r2d2.databinding.RadioButtonColorBinding;
import ru.rocketbank.r2d2.databinding.RadioButtonOrangeBinding;
import ru.rocketbank.r2d2.databinding.ReferenceItemBinding;
import ru.rocketbank.r2d2.databinding.RemittanceCheckInfoFragmentBinding;
import ru.rocketbank.r2d2.databinding.ShopCartAmountBinding;
import ru.rocketbank.r2d2.databinding.ShopCartDeficitBinding;
import ru.rocketbank.r2d2.databinding.ShopCartItemBinding;
import ru.rocketbank.r2d2.databinding.ShopDetailsImageBinding;
import ru.rocketbank.r2d2.databinding.ShopListItemBinding;
import ru.rocketbank.r2d2.databinding.ShopSelectedColorBinding;
import ru.rocketbank.r2d2.databinding.ShopSelectedSizeBinding;
import ru.rocketbank.r2d2.databinding.TariffItemBinding;
import ru.rocketbank.r2d2.databinding.TaxChargesFragmentBinding;
import ru.rocketbank.r2d2.databinding.ToolbarWithButtonOnlyBindingImpl;
import ru.rocketbank.r2d2.databinding.ToolbarWithButtonOnlyBindingV21Impl;
import ru.rocketbank.r2d2.databinding.TransferTabsFragmentBinding;

class DataBinderMapperImpl extends DataBinderMapper {

    private static class InnerBrLookup {
        static String[] sKeys = new String[]{"_all", "ability", "actions", "address", "ads", "alpha", "amountBinding", "bankName", "bank_name", "bik", "budget", "cardBindingData", "card_number", "card_number_visible", "cashback", "chargeModel", "codeword", "color", "comment", "corporate", "corrBank", "corr_bank", "corr_number", "ctc", ShareConstants.WEB_DIALOG_PARAM_DATA, "deficit", "description", "discount", "drawer_status", "driver_licence", "editMode", "feed", "from", "geoObject", "gkh_account_number", "gkh_els", "gkh_mc_service_id", "gkh_payment_document_id", "gkh_payment_document_number", "gkh_period", "handler", "i", "iKnowNum", "image", "imageData", "individual", "inn", "inn_from", "isJointAnalytics", "item", "items", "kbk", "key", "kpp", "list", "listener", "materialAssistance", "materialAssistanceType", "model", "oktmo", "onClickListener", "operation", "penaltyCharge", "penaltyTaxNotificationEnabled", Param.PRICE, "processData", "processHandler", "purpose", "push", "receipt", "recipient_name", "reference", "selectedStatus", "selectedTaxBasis", "stat", ServerProtocol.DIALOG_PARAM_STATE, "tariffItem", Param.TAX, "taxCharge", "taxUinInnControl", "tax_basis", "tax_inn", "tax_period", ProviderField.TEXT, "toolbarBinding", "toolbar_data", "transfer", "uin", "valid", "value", "zoom"};

        private InnerBrLookup() {
        }
    }

    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        return null;
    }

    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        switch (i) {
            case C0859R.layout.activity_ap_add_card:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_ap_add_card_0".equals(i)) {
                    return new ActivityApAddCardBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_ap_add_card is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_ap_manage_card:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_ap_manage_card_0".equals(i)) {
                    return new ActivityApManageCardBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_ap_manage_card is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_card_limit:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_card_limit_0".equals(i)) {
                    return new ActivityCardLimitBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_card_limit is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_card_transfer_amount:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_card_transfer_amount_0".equals(i)) {
                    return new ActivityCardTransferAmountBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_card_transfer_amount is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_card_transfer_process:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_card_transfer_process_0".equals(i)) {
                    return new ActivityCardTransferProcessBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_card_transfer_process is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_charge_notification:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_charge_notification_0".equals(i)) {
                    return new ActivityChargeNotificationBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_charge_notification is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_delivery:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_delivery_0".equals(i)) {
                    return new ActivityDeliveryBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_delivery is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_discount_details:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_discount_details_0".equals(i)) {
                    return new ActivityDiscountDetailsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_discount_details is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_enter_cvv:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_enter_cvv_0".equals(i)) {
                    return new ActivityEnterCvvBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_enter_cvv is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_first_refill:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_first_refill_0".equals(i)) {
                    return new ActivityFirstRefillBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_first_refill is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_invite_friend_info:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_invite_friend_info_0".equals(i)) {
                    return new ActivityInviteFriendInfoBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_invite_friend_info is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_new_passport:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_new_passport_0".equals(i)) {
                    return new ActivityNewPassportBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_new_passport is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_operation_modern_receipt:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_operation_modern_receipt_0".equals(i)) {
                    return new ActivityOperationModernReceiptBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_operation_modern_receipt is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_operation_modern_tag_receipt:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_operation_modern_tag_receipt_0".equals(i)) {
                    return new ActivityOperationModernTagReceiptBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_operation_modern_tag_receipt is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_pdf_view:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_pdf_view_0".equals(i)) {
                    return new ActivityPdfViewBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_pdf_view is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_penalty_charge:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_penalty_charge_0".equals(i)) {
                    return new ActivityPenaltyChargeBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_penalty_charge is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_reference:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_reference_0".equals(i)) {
                    return new ActivityReferenceBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_reference is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_reference_pdf:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_reference_pdf_0".equals(i)) {
                    return new ActivityReferencePdfBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_reference_pdf is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_rocket_cafe:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_rocket_cafe_0".equals(i)) {
                    return new ActivityRocketCafeBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_rocket_cafe is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_rocket_ruble_info:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_rocket_ruble_info_0".equals(i)) {
                    return new ActivityRocketRubleInfoBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_rocket_ruble_info is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_salary_tariff_instruction:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_salary_tariff_instruction_0".equals(i)) {
                    return new ActivitySalaryTariffInstructionBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_salary_tariff_instruction is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_shop_cart:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_shop_cart_0".equals(i)) {
                    return new ActivityShopCartBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_shop_cart is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_shop_details:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_shop_details_0".equals(i)) {
                    return new ActivityShopDetailsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_shop_details is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_shop_info:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_shop_info_0".equals(i)) {
                    return new ActivityShopInfoBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_shop_info is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_shop_order:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_shop_order_0".equals(i)) {
                    return new ActivityShopOrderBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_shop_order is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_sound:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_sound_0".equals(i)) {
                    return new ActivitySoundBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_sound is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_sp_add_card:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_sp_add_card_0".equals(i)) {
                    return new ActivitySpAddCardBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_sp_add_card is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_tariffs:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_tariffs_0".equals(i)) {
                    return new ActivityTariffsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_tariffs is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_tax_charge:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_tax_charge_0".equals(i)) {
                    return new ActivityTaxChargeBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_tax_charge is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.activity_web_auth:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/activity_web_auth_0".equals(i)) {
                    return new ActivityWebAuthBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for activity_web_auth is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.analytics_empty:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/analytics_empty_0".equals(i)) {
                    return new AnalyticsEmptyBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for analytics_empty is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.analytics_item_chart:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/analytics_item_chart_0".equals(i)) {
                    return new AnalyticsItemChartBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for analytics_item_chart is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.analytics_item_header:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/analytics_item_header_0".equals(i)) {
                    return new AnalyticsItemHeaderBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for analytics_item_header is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.analytics_item_merchant_operation:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/analytics_item_merchant_operation_0".equals(i)) {
                    return new AnalyticsItemMerchantOperationBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for analytics_item_merchant_operation is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.analytics_item_operation:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/analytics_item_operation_0".equals(i)) {
                    return new AnalyticsItemOperationBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for analytics_item_operation is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.analytics_item_section:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/analytics_item_section_0".equals(i)) {
                    return new AnalyticsItemSectionBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for analytics_item_section is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.analytics_item_section_person:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/analytics_item_section_person_0".equals(i)) {
                    return new AnalyticsItemSectionPersonBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for analytics_item_section_person is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.analytics_item_tag_operation:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/analytics_item_tag_operation_0".equals(i)) {
                    return new AnalyticsItemTagOperationBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for analytics_item_tag_operation is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.atms_map_fragment:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/atms_map_fragment_0".equals(i)) {
                    return new AtmsMapFragmentBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for atms_map_fragment is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.bank_info:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/bank_info_0".equals(i)) {
                    return new BankInfoBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for bank_info is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.budget_transfer:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/budget_transfer_0".equals(i)) {
                    return new BudgetTransferBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for budget_transfer is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.card_limit_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/card_limit_item_0".equals(i)) {
                    return new CardLimitItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for card_limit_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.card_transfer_header_layout:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout-large/card_transfer_header_layout_0".equals(i)) {
                    return new CardTransferHeaderLayoutBindingLargeImpl(dataBindingComponent, view);
                } else {
                    if ("layout/card_transfer_header_layout_0".equals(i)) {
                        return new CardTransferHeaderLayoutBindingImpl(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for card_transfer_header_layout is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.change_code_activity:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/change_code_activity_0".equals(i)) {
                    return new ChangeCodeActivityBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for change_code_activity is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.corporate_transfer:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/corporate_transfer_0".equals(i)) {
                    return new CorporateTransferBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for corporate_transfer is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.delivery_toolbar:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/delivery_toolbar_0".equals(i)) {
                    return new DeliveryToolbarBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for delivery_toolbar is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.dialog_notification_view:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/dialog_notification_view_0".equals(i)) {
                    return new DialogNotificationViewBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for dialog_notification_view is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.discount_category_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/discount_category_item_0".equals(i)) {
                    return new DiscountCategoryItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for discount_category_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.discount_game_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/discount_game_item_0".equals(i)) {
                    return new DiscountGameItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for discount_game_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.discounts_grid_container:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/discounts_grid_container_0".equals(i)) {
                    return new DiscountsGridContainerBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for discounts_grid_container is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.discounts_item_selected:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/discounts_item_selected_0".equals(i)) {
                    return new DiscountsItemSelectedBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for discounts_item_selected is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.discounts_not_selected:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/discounts_not_selected_0".equals(i)) {
                    return new DiscountsNotSelectedBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for discounts_not_selected is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.discounts_selected:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/discounts_selected_0".equals(i)) {
                    return new DiscountsSelectedBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for discounts_selected is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_ads:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_ads_0".equals(i)) {
                    return new FeedItemAdsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for feed_item_ads is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_ap:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_ap_0".equals(i)) {
                    return new FeedItemApBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for feed_item_ap is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_chosen_month_cashback:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_chosen_month_cashback_0".equals(i)) {
                    return new FeedItemChosenMonthCashbackBindingImpl(dataBindingComponent, view);
                } else {
                    if ("layout-v21/feed_item_chosen_month_cashback_0".equals(i)) {
                        return new FeedItemChosenMonthCashbackBindingV21Impl(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for feed_item_chosen_month_cashback is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_delivery:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_delivery_0".equals(i)) {
                    return new FeedItemDeliveryBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for feed_item_delivery is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_month_cashback:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_month_cashback_0".equals(i)) {
                    return new FeedItemMonthCashbackBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for feed_item_month_cashback is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_new_passport:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_new_passport_0".equals(i)) {
                    return new FeedItemNewPassportBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for feed_item_new_passport is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_onetwotrip:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_onetwotrip_0".equals(i)) {
                    return new FeedItemOnetwotripBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for feed_item_onetwotrip is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_push:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_push_0".equals(i)) {
                    return new FeedItemPushBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for feed_item_push is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_salary_tariffs:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_salary_tariffs_0".equals(i)) {
                    return new FeedItemSalaryTariffsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for feed_item_salary_tariffs is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.feed_item_transfer_to_safe_account:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/feed_item_transfer_to_safe_account_0".equals(i)) {
                    return new FeedItemTransferToSafeAccountBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for feed_item_transfer_to_safe_account is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fingerprint_dialog:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fingerprint_dialog_0".equals(i)) {
                    return new FingerprintDialogBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fingerprint_dialog is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_analytics_base:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_analytics_base_0".equals(i)) {
                    return new FragmentAnalyticsBaseBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_analytics_base is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_bank_transfer:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_bank_transfer_0".equals(i)) {
                    return new FragmentBankTransferBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_bank_transfer is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_card:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_card_0".equals(i)) {
                    return new FragmentCardBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_card is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_card_detail:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_card_detail_0".equals(i)) {
                    return new FragmentCardDetailBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_card_detail is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_cardblock:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_cardblock_0".equals(i)) {
                    return new FragmentCardblockBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_cardblock is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_change:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_change_0".equals(i)) {
                    return new FragmentChangeBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_change is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_change_codeword:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_change_codeword_0".equals(i)) {
                    return new FragmentChangeCodewordBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_change_codeword is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_check:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_check_0".equals(i)) {
                    return new FragmentCheckBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_check is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_delivery_date:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout-v21/fragment_delivery_date_0".equals(i)) {
                    return new FragmentDeliveryDateBindingV21Impl(dataBindingComponent, view);
                } else {
                    if ("layout/fragment_delivery_date_0".equals(i)) {
                        return new FragmentDeliveryDateBindingImpl(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for fragment_delivery_date is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_delivery_map:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_delivery_map_0".equals(i)) {
                    return new FragmentDeliveryMapBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_delivery_map is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_delivery_scheduled:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_delivery_scheduled_0".equals(i)) {
                    return new FragmentDeliveryScheduledBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_delivery_scheduled is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_discounts:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_discounts_0".equals(i)) {
                    return new FragmentDiscountsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_discounts is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_feed:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_feed_0".equals(i)) {
                    return new FragmentFeedBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_feed is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_input_phone_number:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_input_phone_number_0".equals(i)) {
                    return new FragmentInputPhoneNumberBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_input_phone_number is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_invite_friends:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_invite_friends_0".equals(i)) {
                    return new FragmentInviteFriendsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_invite_friends is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_new_card:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_new_card_0".equals(i)) {
                    return new FragmentNewCardBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_new_card is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_new_passport_step:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_new_passport_step_0".equals(i)) {
                    return new FragmentNewPassportStepBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_new_passport_step is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_new_safe:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_new_safe_0".equals(i)) {
                    return new FragmentNewSafeBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_new_safe is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_open_safe_account:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_open_safe_account_0".equals(i)) {
                    return new FragmentOpenSafeAccountBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_open_safe_account is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_profile:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_profile_0".equals(i)) {
                    return new FragmentProfileBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_profile is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_rocket_rouble:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_rocket_rouble_0".equals(i)) {
                    return new FragmentRocketRoubleBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_rocket_rouble is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_shop_feed:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_shop_feed_0".equals(i)) {
                    return new FragmentShopFeedBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_shop_feed is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_small_account:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_small_account_0".equals(i)) {
                    return new FragmentSmallAccountBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_small_account is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_small_account_choose:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_small_account_choose_0".equals(i)) {
                    return new FragmentSmallAccountChooseBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_small_account_choose is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_tariff_details:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_tariff_details_0".equals(i)) {
                    return new FragmentTariffDetailsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_tariff_details is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.fragment_transfer_between_cards:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/fragment_transfer_between_cards_0".equals(i)) {
                    return new FragmentTransferBetweenCardsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for fragment_transfer_between_cards is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.friends_fragment:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/friends_fragment_0".equals(i)) {
                    return new FriendsFragmentBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for friends_fragment is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.gkh_layput:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/gkh_layput_0".equals(i)) {
                    return new GkhLayputBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for gkh_layput is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.include_tab:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/include_tab_0".equals(i)) {
                    return new IncludeTabBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for include_tab is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.include_toolbar:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/include_toolbar_0".equals(i)) {
                    return new IncludeToolbarBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for include_toolbar is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.individual_transfer:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/individual_transfer_0".equals(i)) {
                    return new IndividualTransferBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for individual_transfer is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.info_onetwotrip:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/info_onetwotrip_0".equals(i)) {
                    return new InfoOnetwotripBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for info_onetwotrip is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.item_address:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/item_address_0".equals(i)) {
                    return new ItemAddressBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for item_address is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.item_calendar:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/item_calendar_0".equals(i)) {
                    return new ItemCalendarBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for item_calendar is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.item_delivery_time_interval:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/item_delivery_time_interval_0".equals(i)) {
                    return new ItemDeliveryTimeIntervalBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for item_delivery_time_interval is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_card_with_actions:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_card_with_actions_0".equals(i)) {
                    return new LayoutCardWithActionsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_card_with_actions is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_dialog_change:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_dialog_change_0".equals(i)) {
                    return new LayoutDialogChangeBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_dialog_change is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_general_statistics:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_general_statistics_0".equals(i)) {
                    return new LayoutGeneralStatisticsBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_general_statistics is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_message_out_image:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_message_out_image_0".equals(i)) {
                    return new LayoutMessageOutImageBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_message_out_image is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_message_out_operation:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_message_out_operation_0".equals(i)) {
                    return new LayoutMessageOutOperationBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_message_out_operation is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_message_out_text:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_message_out_text_0".equals(i)) {
                    return new LayoutMessageOutTextBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_message_out_text is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_miles_compensation:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_miles_compensation_0".equals(i)) {
                    return new LayoutMilesCompensationBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_miles_compensation is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_operation_action:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_operation_action_0".equals(i)) {
                    return new LayoutOperationActionBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_operation_action is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_operation_category:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_operation_category_0".equals(i)) {
                    return new LayoutOperationCategoryBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_operation_category is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_operation_description:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_operation_description_0".equals(i)) {
                    return new LayoutOperationDescriptionBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_operation_description is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_operation_incomming:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_operation_incomming_0".equals(i)) {
                    return new LayoutOperationIncommingBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_operation_incomming is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_operation_map:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_operation_map_0".equals(i)) {
                    return new LayoutOperationMapBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_operation_map is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_operation_miles:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_operation_miles_0".equals(i)) {
                    return new LayoutOperationMilesBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_operation_miles is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_operation_outgoing:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_operation_outgoing_0".equals(i)) {
                    return new LayoutOperationOutgoingBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_operation_outgoing is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_operation_source:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_operation_source_0".equals(i)) {
                    return new LayoutOperationSourceBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_operation_source is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_operation_stat_month:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_operation_stat_month_0".equals(i)) {
                    return new LayoutOperationStatMonthBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_operation_stat_month is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_sound_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_sound_item_0".equals(i)) {
                    return new LayoutSoundItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_sound_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_statistics_action_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_statistics_action_item_0".equals(i)) {
                    return new LayoutStatisticsActionItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_statistics_action_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_statistics_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_statistics_item_0".equals(i)) {
                    return new LayoutStatisticsItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_statistics_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_statistics_total_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_statistics_total_item_0".equals(i)) {
                    return new LayoutStatisticsTotalItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for layout_statistics_total_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.layout_toolbar_with_button:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/layout_toolbar_with_button_0".equals(i)) {
                    return new LayoutToolbarWithButtonBindingImpl(dataBindingComponent, view);
                } else {
                    if ("layout-v21/layout_toolbar_with_button_0".equals(i)) {
                        return new LayoutToolbarWithButtonBindingV21Impl(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for layout_toolbar_with_button is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.list_item_card_delete:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/list_item_card_delete_0".equals(i)) {
                    return new ListItemCardDeleteBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for list_item_card_delete is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.list_item_card_header:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/list_item_card_header_0".equals(i)) {
                    return new ListItemCardHeaderBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for list_item_card_header is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.list_item_card_limit:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/list_item_card_limit_0".equals(i)) {
                    return new ListItemCardLimitBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for list_item_card_limit is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.parallax_header:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/parallax_header_0".equals(i)) {
                    return new ParallaxHeaderBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for parallax_header is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.parallax_round_image_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/parallax_round_image_item_0".equals(i)) {
                    return new ParallaxRoundImageItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for parallax_round_image_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.penalty_charges_fragment:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/penalty_charges_fragment_0".equals(i)) {
                    return new PenaltyChargesFragmentBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for penalty_charges_fragment is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.radio_button_color:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/radio_button_color_0".equals(i)) {
                    return new RadioButtonColorBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for radio_button_color is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.radio_button_orange:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/radio_button_orange_0".equals(i)) {
                    return new RadioButtonOrangeBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for radio_button_orange is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.reference_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/reference_item_0".equals(i)) {
                    return new ReferenceItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for reference_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.remittance_check_info_fragment:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/remittance_check_info_fragment_0".equals(i)) {
                    return new RemittanceCheckInfoFragmentBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for remittance_check_info_fragment is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.shop_cart_amount:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/shop_cart_amount_0".equals(i)) {
                    return new ShopCartAmountBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for shop_cart_amount is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.shop_cart_deficit:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/shop_cart_deficit_0".equals(i)) {
                    return new ShopCartDeficitBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for shop_cart_deficit is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.shop_cart_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/shop_cart_item_0".equals(i)) {
                    return new ShopCartItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for shop_cart_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.shop_details_image:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/shop_details_image_0".equals(i)) {
                    return new ShopDetailsImageBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for shop_details_image is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.shop_list_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/shop_list_item_0".equals(i)) {
                    return new ShopListItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for shop_list_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.shop_selected_color:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/shop_selected_color_0".equals(i)) {
                    return new ShopSelectedColorBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for shop_selected_color is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.shop_selected_size:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/shop_selected_size_0".equals(i)) {
                    return new ShopSelectedSizeBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for shop_selected_size is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.tariff_item:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/tariff_item_0".equals(i)) {
                    return new TariffItemBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for tariff_item is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.tax_charges_fragment:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/tax_charges_fragment_0".equals(i)) {
                    return new TaxChargesFragmentBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for tax_charges_fragment is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.toolbar_with_button_only:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/toolbar_with_button_only_0".equals(i)) {
                    return new ToolbarWithButtonOnlyBindingImpl(dataBindingComponent, view);
                } else {
                    if ("layout-v21/toolbar_with_button_only_0".equals(i)) {
                        return new ToolbarWithButtonOnlyBindingV21Impl(dataBindingComponent, view);
                    }
                    throw new IllegalArgumentException("The tag for toolbar_with_button_only is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.transfer_tabs_fragment:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/transfer_tabs_fragment_0".equals(i)) {
                    return new TransferTabsFragmentBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for transfer_tabs_fragment is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.widget_address_view:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/widget_address_view_0".equals(i)) {
                    return new WidgetAddressViewBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for widget_address_view is invalid. Received: ".concat(String.valueOf(i)));
                }
            case C0859R.layout.widget_calendar_view:
                i = view.getTag();
                if (i == 0) {
                    throw new RuntimeException("view must have a tag");
                } else if ("layout/widget_calendar_view_0".equals(i)) {
                    return new WidgetCalendarViewBinding(dataBindingComponent, view);
                } else {
                    throw new IllegalArgumentException("The tag for widget_calendar_view is invalid. Received: ".concat(String.valueOf(i)));
                }
            default:
                return null;
        }
    }

    public int getLayoutId(String str) {
        if (str == null) {
            return 0;
        }
        switch (str.hashCode()) {
            case -2129404540:
                if (str.equals("layout/activity_ap_add_card_0") != null) {
                    return C0859R.layout.activity_ap_add_card;
                }
                break;
            case -2034519928:
                if (str.equals("layout/activity_card_limit_0") != null) {
                    return C0859R.layout.activity_card_limit;
                }
                break;
            case -2033501746:
                if (str.equals("layout/activity_pdf_view_0") != null) {
                    return C0859R.layout.activity_pdf_view;
                }
                break;
            case -2021874431:
                if (str.equals("layout/parallax_header_0") != null) {
                    return C0859R.layout.parallax_header;
                }
                break;
            case -2005407286:
                if (str.equals("layout/analytics_item_operation_0") != null) {
                    return C0859R.layout.analytics_item_operation;
                }
                break;
            case -1978994252:
                if (str.equals("layout/shop_selected_color_0") != null) {
                    return C0859R.layout.shop_selected_color;
                }
                break;
            case -1967425040:
                if (str.equals("layout/feed_item_ap_0") != null) {
                    return C0859R.layout.feed_item_ap;
                }
                break;
            case -1966211054:
                if (str.equals("layout/shop_selected_size_0") != null) {
                    return C0859R.layout.shop_selected_size;
                }
                break;
            case -1931688639:
                if (str.equals("layout/shop_list_item_0") != null) {
                    return C0859R.layout.shop_list_item;
                }
                break;
            case -1866020572:
                if (str.equals("layout/item_delivery_time_interval_0") != null) {
                    return C0859R.layout.item_delivery_time_interval;
                }
                break;
            case -1846207541:
                if (str.equals("layout/shop_details_image_0") != null) {
                    return C0859R.layout.shop_details_image;
                }
                break;
            case -1819597900:
                if (str.equals("layout/layout_card_with_actions_0") != null) {
                    return C0859R.layout.layout_card_with_actions;
                }
                break;
            case -1793499712:
                if (str.equals("layout/activity_discount_details_0") != null) {
                    return C0859R.layout.activity_discount_details;
                }
                break;
            case -1771135636:
                if (str.equals("layout/activity_operation_modern_receipt_0") != null) {
                    return C0859R.layout.activity_operation_modern_receipt;
                }
                break;
            case -1708566478:
                if (str.equals("layout/card_limit_item_0") != null) {
                    return C0859R.layout.card_limit_item;
                }
                break;
            case -1670087292:
                if (str.equals("layout/activity_tax_charge_0") != null) {
                    return C0859R.layout.activity_tax_charge;
                }
                break;
            case -1628159185:
                if (str.equals("layout-v21/feed_item_chosen_month_cashback_0") != null) {
                    return C0859R.layout.feed_item_chosen_month_cashback;
                }
                break;
            case -1566798360:
                if (str.equals("layout/layout_dialog_change_0") != null) {
                    return C0859R.layout.layout_dialog_change;
                }
                break;
            case -1556989037:
                if (str.equals("layout/layout_message_out_image_0") != null) {
                    return C0859R.layout.layout_message_out_image;
                }
                break;
            case -1538613812:
                if (str.equals("layout/analytics_item_header_0") != null) {
                    return C0859R.layout.analytics_item_header;
                }
                break;
            case -1538056985:
                if (str.equals("layout/fragment_card_detail_0") != null) {
                    return C0859R.layout.fragment_card_detail;
                }
                break;
            case -1531138564:
                if (str.equals("layout/fragment_small_account_choose_0") != null) {
                    return C0859R.layout.fragment_small_account_choose;
                }
                break;
            case -1526974835:
                if (str.equals("layout/activity_new_passport_0") != null) {
                    return C0859R.layout.activity_new_passport;
                }
                break;
            case -1428784792:
                if (str.equals("layout/layout_toolbar_with_button_0") != null) {
                    return C0859R.layout.layout_toolbar_with_button;
                }
                break;
            case -1410823044:
                if (str.equals("layout/gkh_layput_0") != null) {
                    return C0859R.layout.gkh_layput;
                }
                break;
            case -1271920981:
                if (str.equals("layout/fragment_card_0") != null) {
                    return C0859R.layout.fragment_card;
                }
                break;
            case -1194515588:
                if (str.equals("layout/penalty_charges_fragment_0") != null) {
                    return C0859R.layout.penalty_charges_fragment;
                }
                break;
            case -1185471658:
                if (str.equals("layout/activity_ap_manage_card_0") != null) {
                    return C0859R.layout.activity_ap_manage_card;
                }
                break;
            case -1182726727:
                if (str.equals("layout/fragment_feed_0") != null) {
                    return C0859R.layout.fragment_feed;
                }
                break;
            case -1163164464:
                if (str.equals("layout/radio_button_color_0") != null) {
                    return C0859R.layout.radio_button_color;
                }
                break;
            case -1162932571:
                if (str.equals("layout/layout_operation_map_0") != null) {
                    return C0859R.layout.layout_operation_map;
                }
                break;
            case -1115172384:
                if (str.equals("layout/fragment_delivery_date_0") != null) {
                    return C0859R.layout.fragment_delivery_date;
                }
                break;
            case -1104960309:
                if (str.equals("layout/fragment_change_0") != null) {
                    return C0859R.layout.fragment_change;
                }
                break;
            case -1082157381:
                if (str.equals("layout/corporate_transfer_0") != null) {
                    return C0859R.layout.corporate_transfer;
                }
                break;
            case -1041246261:
                if (str.equals("layout/discounts_grid_container_0") != null) {
                    return C0859R.layout.discounts_grid_container;
                }
                break;
            case -1002836921:
                if (str.equals("layout/feed_item_chosen_month_cashback_0") != null) {
                    return C0859R.layout.feed_item_chosen_month_cashback;
                }
                break;
            case -995206280:
                if (str.equals("layout/dialog_notification_view_0") != null) {
                    return C0859R.layout.dialog_notification_view;
                }
                break;
            case -978362232:
                if (str.equals("layout/info_onetwotrip_0") != null) {
                    return C0859R.layout.info_onetwotrip;
                }
                break;
            case -917823416:
                if (str.equals("layout/analytics_item_section_0") != null) {
                    return C0859R.layout.analytics_item_section;
                }
                break;
            case -865282491:
                if (str.equals("layout/atms_map_fragment_0") != null) {
                    return C0859R.layout.atms_map_fragment;
                }
                break;
            case -860970863:
                if (str.equals("layout/feed_item_ads_0") != null) {
                    return C0859R.layout.feed_item_ads;
                }
                break;
            case -841510463:
                if (str.equals("layout/widget_calendar_view_0") != null) {
                    return C0859R.layout.widget_calendar_view;
                }
                break;
            case -835195259:
                if (str.equals("layout/layout_operation_outgoing_0") != null) {
                    return C0859R.layout.layout_operation_outgoing;
                }
                break;
            case -811082249:
                if (str.equals("layout/widget_address_view_0") != null) {
                    return C0859R.layout.widget_address_view;
                }
                break;
            case -794203494:
                if (str.equals("layout/layout_operation_incomming_0") != null) {
                    return C0859R.layout.layout_operation_incomming;
                }
                break;
            case -768865957:
                if (str.equals("layout/feed_item_salary_tariffs_0") != null) {
                    return C0859R.layout.feed_item_salary_tariffs;
                }
                break;
            case -736648995:
                if (str.equals("layout/bank_info_0") != null) {
                    return C0859R.layout.bank_info;
                }
                break;
            case -734400238:
                if (str.equals("layout/feed_item_new_passport_0") != null) {
                    return C0859R.layout.feed_item_new_passport;
                }
                break;
            case -725710315:
                if (str.equals("layout/fragment_bank_transfer_0") != null) {
                    return C0859R.layout.fragment_bank_transfer;
                }
                break;
            case -721098843:
                if (str.equals("layout/analytics_item_tag_operation_0") != null) {
                    return C0859R.layout.analytics_item_tag_operation;
                }
                break;
            case -703548860:
                if (str.equals("layout/fragment_cardblock_0") != null) {
                    return C0859R.layout.fragment_cardblock;
                }
                break;
            case -691587664:
                if (str.equals("layout/activity_card_transfer_process_0") != null) {
                    return C0859R.layout.activity_card_transfer_process;
                }
                break;
            case -671257279:
                if (str.equals("layout/activity_shop_order_0") != null) {
                    return C0859R.layout.activity_shop_order;
                }
                break;
            case -661118521:
                if (str.equals("layout/layout_operation_miles_0") != null) {
                    return C0859R.layout.layout_operation_miles;
                }
                break;
            case -586463217:
                if (str.equals("layout/fragment_check_0") != null) {
                    return C0859R.layout.fragment_check;
                }
                break;
            case -574661725:
                if (str.equals("layout/card_transfer_header_layout_0") != null) {
                    return C0859R.layout.card_transfer_header_layout;
                }
                break;
            case -561479983:
                if (str.equals("layout-large/card_transfer_header_layout_0") != null) {
                    return C0859R.layout.card_transfer_header_layout;
                }
                break;
            case -541149535:
                if (str.equals("layout/layout_statistics_action_item_0") != null) {
                    return C0859R.layout.layout_statistics_action_item;
                }
                break;
            case -475145701:
                if (str.equals("layout/feed_item_push_0") != null) {
                    return C0859R.layout.feed_item_push;
                }
                break;
            case -434732169:
                if (str.equals("layout/layout_message_out_text_0") != null) {
                    return C0859R.layout.layout_message_out_text;
                }
                break;
            case -412388992:
                if (str.equals("layout-v21/layout_toolbar_with_button_0") != null) {
                    return C0859R.layout.layout_toolbar_with_button;
                }
                break;
            case -378167878:
                if (str.equals("layout/fragment_invite_friends_0") != null) {
                    return C0859R.layout.fragment_invite_friends;
                }
                break;
            case -362179786:
                if (str.equals("layout/item_calendar_0") != null) {
                    return C0859R.layout.item_calendar;
                }
                break;
            case -316713859:
                if (str.equals("layout/list_item_card_header_0") != null) {
                    return C0859R.layout.list_item_card_header;
                }
                break;
            case -297048602:
                if (str.equals("layout/activity_rocket_ruble_info_0") != null) {
                    return C0859R.layout.activity_rocket_ruble_info;
                }
                break;
            case -287810888:
                if (str.equals("layout/discount_game_item_0") != null) {
                    return C0859R.layout.discount_game_item;
                }
                break;
            case -274760636:
                if (str.equals("layout/activity_reference_pdf_0") != null) {
                    return C0859R.layout.activity_reference_pdf;
                }
                break;
            case -254364144:
                if (str.equals("layout/layout_statistics_item_0") != null) {
                    return C0859R.layout.layout_statistics_item;
                }
                break;
            case -202937916:
                if (str.equals("layout/shop_cart_amount_0") != null) {
                    return C0859R.layout.shop_cart_amount;
                }
                break;
            case -195844557:
                if (str.equals("layout/fragment_transfer_between_cards_0") != null) {
                    return C0859R.layout.fragment_transfer_between_cards;
                }
                break;
            case -191878549:
                if (str.equals("layout/layout_statistics_total_item_0") != null) {
                    return C0859R.layout.layout_statistics_total_item;
                }
                break;
            case -183278659:
                if (str.equals("layout/fragment_delivery_scheduled_0") != null) {
                    return C0859R.layout.fragment_delivery_scheduled;
                }
                break;
            case -148624012:
                if (str.equals("layout/layout_operation_source_0") != null) {
                    return C0859R.layout.layout_operation_source;
                }
                break;
            case -123039527:
                if (str.equals("layout/fragment_discounts_0") != null) {
                    return C0859R.layout.fragment_discounts;
                }
                break;
            case -104068624:
                if (str.equals("layout/include_toolbar_0") != null) {
                    return C0859R.layout.include_toolbar;
                }
                break;
            case -103639456:
                if (str.equals("layout/analytics_empty_0") != null) {
                    return C0859R.layout.analytics_empty;
                }
                break;
            case -75256507:
                if (str.equals("layout/layout_operation_description_0") != null) {
                    return C0859R.layout.layout_operation_description;
                }
                break;
            case -68573817:
                if (str.equals("layout/activity_operation_modern_tag_receipt_0") != null) {
                    return C0859R.layout.activity_operation_modern_tag_receipt;
                }
                break;
            case 11212401:
                if (str.equals("layout/budget_transfer_0") != null) {
                    return C0859R.layout.budget_transfer;
                }
                break;
            case 63329101:
                if (str.equals("layout/list_item_card_limit_0") != null) {
                    return C0859R.layout.list_item_card_limit;
                }
                break;
            case 78547440:
                if (str.equals("layout/friends_fragment_0") != null) {
                    return C0859R.layout.friends_fragment;
                }
                break;
            case 86873955:
                if (str.equals("layout/radio_button_orange_0") != null) {
                    return C0859R.layout.radio_button_orange;
                }
                break;
            case 100625617:
                if (str.equals("layout/activity_reference_0") != null) {
                    return C0859R.layout.activity_reference;
                }
                break;
            case 107412335:
                if (str.equals("layout/activity_web_auth_0") != null) {
                    return C0859R.layout.activity_web_auth;
                }
                break;
            case 152795436:
                if (str.equals("layout/feed_item_transfer_to_safe_account_0") != null) {
                    return C0859R.layout.feed_item_transfer_to_safe_account;
                }
                break;
            case 166847772:
                if (str.equals("layout/activity_charge_notification_0") != null) {
                    return C0859R.layout.activity_charge_notification;
                }
                break;
            case 249428972:
                if (str.equals("layout/fragment_delivery_map_0") != null) {
                    return C0859R.layout.fragment_delivery_map;
                }
                break;
            case 253633212:
                if (str.equals("layout/parallax_round_image_item_0") != null) {
                    return C0859R.layout.parallax_round_image_item;
                }
                break;
            case 291045207:
                if (str.equals("layout/fragment_open_safe_account_0") != null) {
                    return C0859R.layout.fragment_open_safe_account;
                }
                break;
            case 297470619:
                if (str.equals("layout/layout_general_statistics_0") != null) {
                    return C0859R.layout.layout_general_statistics;
                }
                break;
            case 362269216:
                if (str.equals("layout/shop_cart_deficit_0") != null) {
                    return C0859R.layout.shop_cart_deficit;
                }
                break;
            case 363916789:
                if (str.equals("layout/activity_invite_friend_info_0") != null) {
                    return C0859R.layout.activity_invite_friend_info;
                }
                break;
            case 373055585:
                if (str.equals("layout/activity_first_refill_0") != null) {
                    return C0859R.layout.activity_first_refill;
                }
                break;
            case 387125365:
                if (str.equals("layout/feed_item_delivery_0") != null) {
                    return C0859R.layout.feed_item_delivery;
                }
                break;
            case 433390078:
                if (str.equals("layout/item_address_0") != null) {
                    return C0859R.layout.item_address;
                }
                break;
            case 440566911:
                if (str.equals("layout/shop_cart_item_0") != null) {
                    return C0859R.layout.shop_cart_item;
                }
                break;
            case 448250290:
                if (str.equals("layout-v21/toolbar_with_button_only_0") != null) {
                    return C0859R.layout.toolbar_with_button_only;
                }
                break;
            case 501625282:
                if (str.equals("layout/activity_enter_cvv_0") != null) {
                    return C0859R.layout.activity_enter_cvv;
                }
                break;
            case 521138010:
                if (str.equals("layout/tariff_item_0") != null) {
                    return C0859R.layout.tariff_item;
                }
                break;
            case 541182085:
                if (str.equals("layout/fragment_analytics_base_0") != null) {
                    return C0859R.layout.fragment_analytics_base;
                }
                break;
            case 555192321:
                if (str.equals("layout/fragment_new_passport_step_0") != null) {
                    return C0859R.layout.fragment_new_passport_step;
                }
                break;
            case 560955290:
                if (str.equals("layout/tax_charges_fragment_0") != null) {
                    return C0859R.layout.tax_charges_fragment;
                }
                break;
            case 588058809:
                if (str.equals("layout/activity_card_transfer_amount_0") != null) {
                    return C0859R.layout.activity_card_transfer_amount;
                }
                break;
            case 614394261:
                if (str.equals("layout/activity_tariffs_0") != null) {
                    return C0859R.layout.activity_tariffs;
                }
                break;
            case 630432666:
                if (str.equals("layout/toolbar_with_button_only_0") != null) {
                    return C0859R.layout.toolbar_with_button_only;
                }
                break;
            case 648732957:
                if (str.equals("layout/individual_transfer_0") != null) {
                    return C0859R.layout.individual_transfer;
                }
                break;
            case 659253205:
                if (str.equals("layout/fragment_rocket_rouble_0") != null) {
                    return C0859R.layout.fragment_rocket_rouble;
                }
                break;
            case 665930608:
                if (str.equals("layout/activity_delivery_0") != null) {
                    return C0859R.layout.activity_delivery;
                }
                break;
            case 743844047:
                if (str.equals("layout/layout_operation_action_0") != null) {
                    return C0859R.layout.layout_operation_action;
                }
                break;
            case 776160339:
                if (str.equals("layout/transfer_tabs_fragment_0") != null) {
                    return C0859R.layout.transfer_tabs_fragment;
                }
                break;
            case 860583353:
                if (str.equals("layout/fingerprint_dialog_0") != null) {
                    return C0859R.layout.fingerprint_dialog;
                }
                break;
            case 866453711:
                if (str.equals("layout/activity_shop_cart_0") != null) {
                    return C0859R.layout.activity_shop_cart;
                }
                break;
            case 964115118:
                if (str.equals("layout/analytics_item_section_person_0") != null) {
                    return C0859R.layout.analytics_item_section_person;
                }
                break;
            case 1049872093:
                if (str.equals("layout/activity_shop_info_0") != null) {
                    return C0859R.layout.activity_shop_info;
                }
                break;
            case 1087940910:
                if (str.equals("layout/activity_rocket_cafe_0") != null) {
                    return C0859R.layout.activity_rocket_cafe;
                }
                break;
            case 1122246886:
                if (str.equals("layout/activity_penalty_charge_0") != null) {
                    return C0859R.layout.activity_penalty_charge;
                }
                break;
            case 1141060481:
                if (str.equals("layout/analytics_item_chart_0") != null) {
                    return C0859R.layout.analytics_item_chart;
                }
                break;
            case 1166623684:
                if (str.equals("layout/layout_sound_item_0") != null) {
                    return C0859R.layout.layout_sound_item;
                }
                break;
            case 1179275926:
                if (str.equals("layout/activity_sp_add_card_0") != null) {
                    return C0859R.layout.activity_sp_add_card;
                }
                break;
            case 1252188558:
                if (str.equals("layout/fragment_shop_feed_0") != null) {
                    return C0859R.layout.fragment_shop_feed;
                }
                break;
            case 1313954711:
                if (str.equals("layout/layout_operation_category_0") != null) {
                    return C0859R.layout.layout_operation_category;
                }
                break;
            case 1339382408:
                if (str.equals("layout/change_code_activity_0") != null) {
                    return C0859R.layout.change_code_activity;
                }
                break;
            case 1378589926:
                if (str.equals("layout/delivery_toolbar_0") != null) {
                    return C0859R.layout.delivery_toolbar;
                }
                break;
            case 1392656682:
                if (str.equals("layout/fragment_new_card_0") != null) {
                    return C0859R.layout.fragment_new_card;
                }
                break;
            case 1479561661:
                if (str.equals("layout/reference_item_0") != null) {
                    return C0859R.layout.reference_item;
                }
                break;
            case 1517762863:
                if (str.equals("layout/analytics_item_merchant_operation_0") != null) {
                    return C0859R.layout.analytics_item_merchant_operation;
                }
                break;
            case 1545071116:
                if (str.equals("layout/feed_item_onetwotrip_0") != null) {
                    return C0859R.layout.feed_item_onetwotrip;
                }
                break;
            case 1610247519:
                if (str.equals("layout/remittance_check_info_fragment_0") != null) {
                    return C0859R.layout.remittance_check_info_fragment;
                }
                break;
            case 1618257947:
                if (str.equals("layout/list_item_card_delete_0") != null) {
                    return C0859R.layout.list_item_card_delete;
                }
                break;
            case 1693394965:
                if (str.equals("layout/activity_sound_0") != null) {
                    return C0859R.layout.activity_sound;
                }
                break;
            case 1706535084:
                if (str.equals("layout/discount_category_item_0") != null) {
                    return C0859R.layout.discount_category_item;
                }
                break;
            case 1736869806:
                if (str.equals("layout/layout_operation_stat_month_0") != null) {
                    return C0859R.layout.layout_operation_stat_month;
                }
                break;
            case 1850366567:
                if (str.equals("layout/fragment_new_safe_0") != null) {
                    return C0859R.layout.fragment_new_safe;
                }
                break;
            case 1879807050:
                if (str.equals("layout/discounts_not_selected_0") != null) {
                    return C0859R.layout.discounts_not_selected;
                }
                break;
            case 1880064693:
                if (str.equals("layout/activity_shop_details_0") != null) {
                    return C0859R.layout.activity_shop_details;
                }
                break;
            case 1892455928:
                if (str.equals("layout-v21/fragment_delivery_date_0") != null) {
                    return C0859R.layout.fragment_delivery_date;
                }
                break;
            case 1937572234:
                if (str.equals("layout/include_tab_0") != null) {
                    return C0859R.layout.include_tab;
                }
                break;
            case 1940278000:
                if (str.equals("layout/fragment_profile_0") != null) {
                    return C0859R.layout.fragment_profile;
                }
                break;
            case 1953258029:
                if (str.equals("layout/fragment_change_codeword_0") != null) {
                    return C0859R.layout.fragment_change_codeword;
                }
                break;
            case 1995084894:
                if (str.equals("layout/discounts_selected_0") != null) {
                    return C0859R.layout.discounts_selected;
                }
                break;
            case 2000656671:
                if (str.equals("layout/layout_message_out_operation_0") != null) {
                    return C0859R.layout.layout_message_out_operation;
                }
                break;
            case 2022675434:
                if (str.equals("layout/fragment_input_phone_number_0") != null) {
                    return C0859R.layout.fragment_input_phone_number;
                }
                break;
            case 2061351630:
                if (str.equals("layout/activity_salary_tariff_instruction_0") != null) {
                    return C0859R.layout.activity_salary_tariff_instruction;
                }
                break;
            case 2082632578:
                if (str.equals("layout/fragment_tariff_details_0") != null) {
                    return C0859R.layout.fragment_tariff_details;
                }
                break;
            case 2089412262:
                if (str.equals("layout/discounts_item_selected_0") != null) {
                    return C0859R.layout.discounts_item_selected;
                }
                break;
            case 2125313212:
                if (str.equals("layout/fragment_small_account_0") != null) {
                    return C0859R.layout.fragment_small_account;
                }
                break;
            case 2126092474:
                if (str.equals("layout/feed_item_month_cashback_0") != null) {
                    return C0859R.layout.feed_item_month_cashback;
                }
                break;
            case 2126161276:
                if (str.equals("layout/layout_miles_compensation_0") != null) {
                    return C0859R.layout.layout_miles_compensation;
                }
                break;
            default:
                break;
        }
        return 0;
    }

    public String convertBrIdToString(int i) {
        if (i >= 0) {
            if (i < InnerBrLookup.sKeys.length) {
                return InnerBrLookup.sKeys[i];
            }
        }
        return 0;
    }
}
