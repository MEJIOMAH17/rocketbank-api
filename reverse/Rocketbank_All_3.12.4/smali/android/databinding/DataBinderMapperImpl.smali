.class Landroid/databinding/DataBinderMapperImpl;
.super Landroid/databinding/DataBinderMapper;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/databinding/DataBinderMapperImpl$InnerBrLookup;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/databinding/DataBinderMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public convertBrIdToString(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_1

    .line 2221
    sget-object v0, Landroid/databinding/DataBinderMapperImpl$InnerBrLookup;->sKeys:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2224
    :cond_0
    sget-object v0, Landroid/databinding/DataBinderMapperImpl$InnerBrLookup;->sKeys:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 1

    sparse-switch p3, :sswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 1287
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_0

    .line 1288
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-string v0, "layout/widget_calendar_view_0"

    .line 1289
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    new-instance p3, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/core/databinding/WidgetCalendarViewBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1292
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for widget_calendar_view is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1026
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2

    .line 1027
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v0, "layout/widget_address_view_0"

    .line 1028
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1029
    new-instance p3, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/core/databinding/WidgetAddressViewBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1031
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for widget_address_view is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1170
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4

    .line 1171
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v0, "layout/transfer_tabs_fragment_0"

    .line 1172
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1173
    new-instance p3, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/TransferTabsFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1175
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for transfer_tabs_fragment is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_6

    .line 250
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const-string v0, "layout/toolbar_with_button_only_0"

    .line 251
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 252
    new-instance p3, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingImpl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_7
    const-string v0, "layout-v21/toolbar_with_button_only_0"

    .line 254
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    new-instance p3, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ToolbarWithButtonOnlyBindingV21Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 257
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for toolbar_with_button_only is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 894
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_9

    .line 895
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const-string v0, "layout/tax_charges_fragment_0"

    .line 896
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 897
    new-instance p3, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/TaxChargesFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 899
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for tax_charges_fragment is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 309
    :sswitch_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_b

    .line 310
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string v0, "layout/tariff_item_0"

    .line 311
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 312
    new-instance p3, Lru/rocketbank/r2d2/databinding/TariffItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/TariffItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 314
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for tariff_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 741
    :sswitch_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_d

    .line 742
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-string v0, "layout/shop_selected_size_0"

    .line 743
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 744
    new-instance p3, Lru/rocketbank/r2d2/databinding/ShopSelectedSizeBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ShopSelectedSizeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 746
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for shop_selected_size is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_f

    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    const-string v0, "layout/shop_selected_color_0"

    .line 59
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 60
    new-instance p3, Lru/rocketbank/r2d2/databinding/ShopSelectedColorBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ShopSelectedColorBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 62
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for shop_selected_color is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 390
    :sswitch_8
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_11

    .line 391
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    const-string v0, "layout/shop_list_item_0"

    .line 392
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 393
    new-instance p3, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ShopListItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 395
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for shop_list_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1278
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_13

    .line 1279
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    const-string v0, "layout/shop_details_image_0"

    .line 1280
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1281
    new-instance p3, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ShopDetailsImageBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1283
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for shop_details_image is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :sswitch_a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_15

    .line 124
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const-string v0, "layout/shop_cart_item_0"

    .line 125
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 126
    new-instance p3, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ShopCartItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 128
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for shop_cart_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1134
    :sswitch_b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_17

    .line 1135
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    const-string v0, "layout/shop_cart_deficit_0"

    .line 1136
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1137
    new-instance p3, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ShopCartDeficitBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1139
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for shop_cart_deficit is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 840
    :sswitch_c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_19

    .line 841
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const-string v0, "layout/shop_cart_amount_0"

    .line 842
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 843
    new-instance p3, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ShopCartAmountBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 845
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for shop_cart_amount is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :sswitch_d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1b

    .line 169
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    const-string v0, "layout/remittance_check_info_fragment_0"

    .line 170
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 171
    new-instance p3, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/RemittanceCheckInfoFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 173
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for remittance_check_info_fragment is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :sswitch_e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1d

    .line 400
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    const-string v0, "layout/reference_item_0"

    .line 401
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 402
    new-instance p3, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ReferenceItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 404
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for reference_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 561
    :sswitch_f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1f

    .line 562
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    const-string v0, "layout/radio_button_orange_0"

    .line 563
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 564
    new-instance p3, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 566
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for radio_button_orange is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1188
    :sswitch_10
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_21

    .line 1189
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    const-string v0, "layout/radio_button_color_0"

    .line 1190
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1191
    new-instance p3, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1193
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for radio_button_color is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 867
    :sswitch_11
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_23

    .line 868
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    const-string v0, "layout/penalty_charges_fragment_0"

    .line 869
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 870
    new-instance p3, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/PenaltyChargesFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 872
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for penalty_charges_fragment is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 336
    :sswitch_12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_25

    .line 337
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    const-string v0, "layout/parallax_round_image_item_0"

    .line 338
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 339
    new-instance p3, Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ParallaxRoundImageItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 341
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for parallax_round_image_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 687
    :sswitch_13
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_27

    .line 688
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    const-string v0, "layout/parallax_header_0"

    .line 689
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 690
    new-instance p3, Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ParallaxHeaderBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 692
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for parallax_header is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 876
    :sswitch_14
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_29

    .line 877
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_29
    const-string v0, "layout/list_item_card_limit_0"

    .line 878
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 879
    new-instance p3, Lru/rocketbank/r2d2/databinding/ListItemCardLimitBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ListItemCardLimitBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 881
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for list_item_card_limit is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 903
    :sswitch_15
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2b

    .line 904
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    const-string v0, "layout/list_item_card_header_0"

    .line 905
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 906
    new-instance p3, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ListItemCardHeaderBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 908
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for list_item_card_header is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 933
    :sswitch_16
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2d

    .line 934
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d
    const-string v0, "layout/list_item_card_delete_0"

    .line 935
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 936
    new-instance p3, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ListItemCardDeleteBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 938
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for list_item_card_delete is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 912
    :sswitch_17
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2f

    .line 913
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    const-string v0, "layout/layout_toolbar_with_button_0"

    .line 914
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 915
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_30
    const-string v0, "layout-v21/layout_toolbar_with_button_0"

    .line 917
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 918
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBindingV21Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 920
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_toolbar_with_button is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 813
    :sswitch_18
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_32

    .line 814
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    const-string v0, "layout/layout_statistics_total_item_0"

    .line 815
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 816
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsTotalItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 818
    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_statistics_total_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
    :sswitch_19
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_34

    .line 67
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    const-string v0, "layout/layout_statistics_item_0"

    .line 68
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 69
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 71
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_statistics_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 990
    :sswitch_1a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_36

    .line 991
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    const-string v0, "layout/layout_statistics_action_item_0"

    .line 992
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 993
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutStatisticsActionItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutStatisticsActionItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 995
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_statistics_action_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1224
    :sswitch_1b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_38

    .line 1225
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_38
    const-string v0, "layout/layout_sound_item_0"

    .line 1226
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 1227
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutSoundItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1229
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_sound_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 417
    :sswitch_1c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3a

    .line 418
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    const-string v0, "layout/layout_operation_stat_month_0"

    .line 419
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 420
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutOperationStatMonthBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationStatMonthBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 422
    :cond_3b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_operation_stat_month is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1161
    :sswitch_1d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3c

    .line 1162
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    const-string v0, "layout/layout_operation_source_0"

    .line 1163
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1164
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationSourceBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1166
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_operation_source is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1080
    :sswitch_1e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_3e

    .line 1081
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    const-string v0, "layout/layout_operation_outgoing_0"

    .line 1082
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1083
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationOutgoingBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1085
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_operation_outgoing is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 462
    :sswitch_1f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_40

    .line 463
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    const-string v0, "layout/layout_operation_miles_0"

    .line 464
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 465
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutOperationMilesBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationMilesBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 467
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_operation_miles is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 732
    :sswitch_20
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_42

    .line 733
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    const-string v0, "layout/layout_operation_map_0"

    .line 734
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 735
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationMapBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 737
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_operation_map is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1251
    :sswitch_21
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_44

    .line 1252
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_44
    const-string v0, "layout/layout_operation_incomming_0"

    .line 1253
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1254
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationIncommingBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1256
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_operation_incomming is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 696
    :sswitch_22
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_46

    .line 697
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_46
    const-string v0, "layout/layout_operation_description_0"

    .line 698
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 699
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutOperationDescriptionBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationDescriptionBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 701
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_operation_description is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :sswitch_23
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_48

    .line 160
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    const-string v0, "layout/layout_operation_category_0"

    .line 161
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 162
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationCategoryBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 164
    :cond_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_operation_category is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1125
    :sswitch_24
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4a

    .line 1126
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    const-string v0, "layout/layout_operation_action_0"

    .line 1127
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1128
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutOperationActionBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutOperationActionBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1130
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_operation_action is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 885
    :sswitch_25
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4c

    .line 886
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    const-string v0, "layout/layout_miles_compensation_0"

    .line 887
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 888
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutMilesCompensationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 890
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_miles_compensation is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :sswitch_26
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_4e

    .line 13
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4e
    const-string v0, "layout/layout_message_out_text_0"

    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 15
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutTextBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 17
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_message_out_text is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 777
    :sswitch_27
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_50

    .line 778
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    const-string v0, "layout/layout_message_out_operation_0"

    .line 779
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 780
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutOperationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 782
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_message_out_operation is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1233
    :sswitch_28
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_52

    .line 1234
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    const-string v0, "layout/layout_message_out_image_0"

    .line 1235
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1236
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutMessageOutImageBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1238
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_message_out_image is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :sswitch_29
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_54

    .line 634
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    const-string v0, "layout/layout_general_statistics_0"

    .line 635
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 636
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutGeneralStatisticsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 638
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_general_statistics is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :sswitch_2a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_56

    .line 205
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    const-string v0, "layout/layout_dialog_change_0"

    .line 206
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 207
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 209
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_dialog_change is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 795
    :sswitch_2b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_58

    .line 796
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    const-string v0, "layout/layout_card_with_actions_0"

    .line 797
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 798
    new-instance p3, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutCardWithActionsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 800
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for layout_card_with_actions is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 570
    :sswitch_2c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_5a

    .line 571
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    const-string v0, "layout/item_delivery_time_interval_0"

    .line 572
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 573
    new-instance p3, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ItemDeliveryTimeIntervalBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 575
    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for item_delivery_time_interval is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 642
    :sswitch_2d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_5c

    .line 643
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5c
    const-string v0, "layout/item_calendar_0"

    .line 644
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 645
    new-instance p3, Lru/rocketbank/core/databinding/ItemCalendarBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/core/databinding/ItemCalendarBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 647
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for item_calendar is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :sswitch_2e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_5e

    .line 31
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    const-string v0, "layout/item_address_0"

    .line 32
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 33
    new-instance p3, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ItemAddressBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 35
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for item_address is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 498
    :sswitch_2f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_60

    .line 499
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    const-string v0, "layout/info_onetwotrip_0"

    .line 500
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 501
    new-instance p3, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/InfoOnetwotripBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 503
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for info_onetwotrip is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 471
    :sswitch_30
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_62

    .line 472
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_62
    const-string v0, "layout/individual_transfer_0"

    .line 473
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 474
    new-instance p3, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/IndividualTransferBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 476
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for individual_transfer is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 615
    :sswitch_31
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_64

    .line 616
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_64
    const-string v0, "layout/include_toolbar_0"

    .line 617
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 618
    new-instance p3, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/IncludeToolbarBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 620
    :cond_65
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for include_toolbar is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :sswitch_32
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_66

    .line 115
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    const-string v0, "layout/include_tab_0"

    .line 116
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 117
    new-instance p3, Lru/rocketbank/r2d2/databinding/IncludeTabBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/IncludeTabBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 119
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for include_tab is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :sswitch_33
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_68

    .line 661
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    const-string v0, "layout/gkh_layput_0"

    .line 662
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 663
    new-instance p3, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/GkhLayputBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 665
    :cond_69
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for gkh_layput is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 924
    :sswitch_34
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_6a

    .line 925
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    const-string v0, "layout/friends_fragment_0"

    .line 926
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 927
    new-instance p3, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FriendsFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 929
    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for friends_fragment is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 480
    :sswitch_35
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_6c

    .line 481
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    const-string v0, "layout/fragment_transfer_between_cards_0"

    .line 482
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 483
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentTransferBetweenCardsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 485
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_transfer_between_cards is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :sswitch_36
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_6e

    .line 49
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    const-string v0, "layout/fragment_tariff_details_0"

    .line 50
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 51
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentTariffDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 53
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_tariff_details is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1107
    :sswitch_37
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_70

    .line 1108
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    const-string v0, "layout/fragment_small_account_choose_0"

    .line 1109
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1110
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountChooseBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1112
    :cond_71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_small_account_choose is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 705
    :sswitch_38
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_72

    .line 706
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    const-string v0, "layout/fragment_small_account_0"

    .line 707
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 708
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentSmallAccountBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 710
    :cond_73
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_small_account is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :sswitch_39
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_74

    .line 223
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    const-string v0, "layout/fragment_shop_feed_0"

    .line 224
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 225
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentShopFeedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 227
    :cond_75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_shop_feed is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 381
    :sswitch_3a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_76

    .line 382
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    const-string v0, "layout/fragment_rocket_rouble_0"

    .line 383
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 384
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentRocketRoubleBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 386
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_rocket_rouble is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 942
    :sswitch_3b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_78

    .line 943
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    const-string v0, "layout/fragment_profile_0"

    .line 944
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 945
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentProfileBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 947
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_profile is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1116
    :sswitch_3c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_7a

    .line 1117
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7a
    const-string v0, "layout/fragment_open_safe_account_0"

    .line 1118
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1119
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentOpenSafeAccountBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1121
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_open_safe_account is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 300
    :sswitch_3d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_7c

    .line 301
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    const-string v0, "layout/fragment_new_safe_0"

    .line 302
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 303
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentNewSafeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 305
    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_new_safe is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :sswitch_3e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_7e

    .line 355
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    const-string v0, "layout/fragment_new_passport_step_0"

    .line 356
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 357
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentNewPassportStepBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 359
    :cond_7f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_new_passport_step is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1089
    :sswitch_3f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_80

    .line 1090
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_80
    const-string v0, "layout/fragment_new_card_0"

    .line 1091
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 1092
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentNewCardBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentNewCardBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1094
    :cond_81
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_new_card is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :sswitch_40
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_82

    .line 241
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_82
    const-string v0, "layout/fragment_invite_friends_0"

    .line 242
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 243
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentInviteFriendsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 245
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_invite_friends is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 669
    :sswitch_41
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_84

    .line 670
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_84
    const-string v0, "layout/fragment_input_phone_number_0"

    .line 671
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 672
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 674
    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_input_phone_number is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1197
    :sswitch_42
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_86

    .line 1198
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_86
    const-string v0, "layout/fragment_feed_0"

    .line 1199
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1200
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentFeedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1202
    :cond_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_feed is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 489
    :sswitch_43
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_88

    .line 490
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_88
    const-string v0, "layout/fragment_discounts_0"

    .line 491
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 492
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentDiscountsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 494
    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_discounts is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1269
    :sswitch_44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_8a

    .line 1270
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8a
    const-string v0, "layout/fragment_delivery_scheduled_0"

    .line 1271
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 1272
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryScheduledBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1274
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_delivery_scheduled is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :sswitch_45
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_8c

    .line 106
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8c
    const-string v0, "layout/fragment_delivery_map_0"

    .line 107
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 108
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryMapBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 110
    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_delivery_map is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :sswitch_46
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_8e

    .line 76
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8e
    const-string v0, "layout-v21/fragment_delivery_date_0"

    .line 77
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 78
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingV21Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_8f
    const-string v0, "layout/fragment_delivery_date_0"

    .line 80
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 81
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingImpl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentDeliveryDateBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 83
    :cond_90
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_delivery_date is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 759
    :sswitch_47
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_91

    .line 760
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_91
    const-string v0, "layout/fragment_check_0"

    .line 761
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 762
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentCheckBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 764
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_check is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 507
    :sswitch_48
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_93

    .line 508
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_93
    const-string v0, "layout/fragment_change_codeword_0"

    .line 509
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 510
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeCodewordBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 512
    :cond_94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_change_codeword is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :sswitch_49
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_95

    .line 178
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_95
    const-string v0, "layout/fragment_change_0"

    .line 179
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 180
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentChangeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 182
    :cond_96
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_change is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 723
    :sswitch_4a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_97

    .line 724
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_97
    const-string v0, "layout/fragment_cardblock_0"

    .line 725
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 726
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardblockBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 728
    :cond_98
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_cardblock is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 408
    :sswitch_4b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_99

    .line 409
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_99
    const-string v0, "layout/fragment_card_detail_0"

    .line 410
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 411
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardDetailBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 413
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_card_detail is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 588
    :sswitch_4c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_9b

    .line 589
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9b
    const-string v0, "layout/fragment_card_0"

    .line 590
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 591
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentCardBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 593
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_card is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :sswitch_4d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_9d

    .line 214
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9d
    const-string v0, "layout/fragment_bank_transfer_0"

    .line 215
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 216
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentBankTransferBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 218
    :cond_9e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_bank_transfer is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 597
    :sswitch_4e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_9f

    .line 598
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9f
    const-string v0, "layout/fragment_analytics_base_0"

    .line 599
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 600
    new-instance p3, Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentAnalyticsBaseBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 602
    :cond_a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fragment_analytics_base is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1143
    :sswitch_4f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_a1

    .line 1144
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a1
    const-string v0, "layout/fingerprint_dialog_0"

    .line 1145
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 1146
    new-instance p3, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FingerprintDialogBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1148
    :cond_a2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for fingerprint_dialog is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :sswitch_50
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_a3

    .line 151
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a3
    const-string v0, "layout/feed_item_transfer_to_safe_account_0"

    .line 152
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 153
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 155
    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_transfer_to_safe_account is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1296
    :sswitch_51
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_a5

    .line 1297
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a5
    const-string v0, "layout/feed_item_salary_tariffs_0"

    .line 1298
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 1299
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemSalaryTariffsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1301
    :cond_a6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_salary_tariffs is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 768
    :sswitch_52
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_a7

    .line 769
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a7
    const-string v0, "layout/feed_item_push_0"

    .line 770
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 771
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemPushBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 773
    :cond_a8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_push is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 651
    :sswitch_53
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_a9

    .line 652
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a9
    const-string v0, "layout/feed_item_onetwotrip_0"

    .line 653
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 654
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 656
    :cond_aa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_onetwotrip is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :sswitch_54
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_ab

    .line 319
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ab
    const-string v0, "layout/feed_item_new_passport_0"

    .line 320
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 321
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemNewPassportBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 323
    :cond_ac
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_new_passport is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :sswitch_55
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_ad

    .line 346
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ad
    const-string v0, "layout/feed_item_month_cashback_0"

    .line 347
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 348
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemMonthCashbackBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemMonthCashbackBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 350
    :cond_ae
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_month_cashback is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 552
    :sswitch_56
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_af

    .line 553
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_af
    const-string v0, "layout/feed_item_delivery_0"

    .line 554
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 555
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemDeliveryBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 557
    :cond_b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_delivery is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :sswitch_57
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_b1

    .line 280
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b1
    const-string v0, "layout/feed_item_chosen_month_cashback_0"

    .line 281
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 282
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingImpl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_b2
    const-string v0, "layout-v21/feed_item_chosen_month_cashback_0"

    .line 284
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 285
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemChosenMonthCashbackBindingV21Impl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 287
    :cond_b3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_chosen_month_cashback is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 543
    :sswitch_58
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_b4

    .line 544
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b4
    const-string v0, "layout/feed_item_ap_0"

    .line 545
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 546
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 548
    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_ap is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1152
    :sswitch_59
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_b6

    .line 1153
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b6
    const-string v0, "layout/feed_item_ads_0"

    .line 1154
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 1155
    new-instance p3, Lru/rocketbank/r2d2/databinding/FeedItemAdsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemAdsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1157
    :cond_b7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for feed_item_ads is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 951
    :sswitch_5a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_b8

    .line 952
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b8
    const-string v0, "layout/discounts_selected_0"

    .line 953
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 954
    new-instance p3, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/DiscountsSelectedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 956
    :cond_b9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for discounts_selected is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1017
    :sswitch_5b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_ba

    .line 1018
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ba
    const-string v0, "layout/discounts_not_selected_0"

    .line 1019
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1020
    new-instance p3, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/DiscountsNotSelectedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1022
    :cond_bb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for discounts_not_selected is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 327
    :sswitch_5c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_bc

    .line 328
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bc
    const-string v0, "layout/discounts_item_selected_0"

    .line 329
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 330
    new-instance p3, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/DiscountsItemSelectedBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 332
    :cond_bd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for discounts_item_selected is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :sswitch_5d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_be

    .line 40
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_be
    const-string v0, "layout/discounts_grid_container_0"

    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 42
    new-instance p3, Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/DiscountsGridContainerBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 44
    :cond_bf
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for discounts_grid_container is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :sswitch_5e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_c0

    .line 373
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c0
    const-string v0, "layout/discount_game_item_0"

    .line 374
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 375
    new-instance p3, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/DiscountGameItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 377
    :cond_c1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for discount_game_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :sswitch_5f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_c2

    .line 427
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c2
    const-string v0, "layout/discount_category_item_0"

    .line 428
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 429
    new-instance p3, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/DiscountCategoryItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 431
    :cond_c3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for discount_category_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :sswitch_60
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_c4

    .line 88
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c4
    const-string v0, "layout/dialog_notification_view_0"

    .line 89
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 90
    new-instance p3, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 92
    :cond_c5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for dialog_notification_view is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1053
    :sswitch_61
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_c6

    .line 1054
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c6
    const-string v0, "layout/delivery_toolbar_0"

    .line 1055
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1056
    new-instance p3, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/DeliveryToolbarBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1058
    :cond_c7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for delivery_toolbar is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1071
    :sswitch_62
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_c8

    .line 1072
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c8
    const-string v0, "layout/corporate_transfer_0"

    .line 1073
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 1074
    new-instance p3, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/CorporateTransferBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1076
    :cond_c9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for corporate_transfer is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 786
    :sswitch_63
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_ca

    .line 787
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ca
    const-string v0, "layout/change_code_activity_0"

    .line 788
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 789
    new-instance p3, Lru/rocketbank/r2d2/databinding/ChangeCodeActivityBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ChangeCodeActivityBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 791
    :cond_cb
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for change_code_activity is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 969
    :sswitch_64
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_cc

    .line 970
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cc
    const-string v0, "layout-large/card_transfer_header_layout_0"

    .line 971
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 972
    new-instance p3, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingLargeImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    :cond_cd
    const-string v0, "layout/card_transfer_header_layout_0"

    .line 974
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 975
    new-instance p3, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingImpl;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/CardTransferHeaderLayoutBindingImpl;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 977
    :cond_ce
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for card_transfer_header_layout is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 960
    :sswitch_65
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_cf

    .line 961
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_cf
    const-string v0, "layout/card_limit_item_0"

    .line 962
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 963
    new-instance p3, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/CardLimitItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 965
    :cond_d0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for card_limit_item is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1206
    :sswitch_66
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_d1

    .line 1207
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d1
    const-string v0, "layout/budget_transfer_0"

    .line 1208
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1209
    new-instance p3, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/BudgetTransferBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1211
    :cond_d2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for budget_transfer is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 999
    :sswitch_67
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_d3

    .line 1000
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d3
    const-string v0, "layout/bank_info_0"

    .line 1001
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 1002
    new-instance p3, Lru/rocketbank/r2d2/databinding/BankInfoBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/BankInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1004
    :cond_d4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for bank_info is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1035
    :sswitch_68
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_d5

    .line 1036
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d5
    const-string v0, "layout/atms_map_fragment_0"

    .line 1037
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 1038
    new-instance p3, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/AtmsMapFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1040
    :cond_d6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for atms_map_fragment is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :sswitch_69
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_d7

    .line 232
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d7
    const-string v0, "layout/analytics_item_tag_operation_0"

    .line 233
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 234
    new-instance p3, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemTagOperationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 236
    :cond_d8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for analytics_item_tag_operation is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 822
    :sswitch_6a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_d9

    .line 823
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d9
    const-string v0, "layout/analytics_item_section_person_0"

    .line 824
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 825
    new-instance p3, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionPersonBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 827
    :cond_da
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for analytics_item_section_person is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1179
    :sswitch_6b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_db

    .line 1180
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_db
    const-string v0, "layout/analytics_item_section_0"

    .line 1181
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1182
    new-instance p3, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemSectionBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1184
    :cond_dc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for analytics_item_section is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 750
    :sswitch_6c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_dd

    .line 751
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dd
    const-string v0, "layout/analytics_item_operation_0"

    .line 752
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 753
    new-instance p3, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemOperationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 755
    :cond_de
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for analytics_item_operation is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 606
    :sswitch_6d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_df

    .line 607
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_df
    const-string v0, "layout/analytics_item_merchant_operation_0"

    .line 608
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 609
    new-instance p3, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemMerchantOperationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 611
    :cond_e0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for analytics_item_merchant_operation is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :sswitch_6e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_e1

    .line 187
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e1
    const-string v0, "layout/analytics_item_header_0"

    .line 188
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 189
    new-instance p3, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemHeaderBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 191
    :cond_e2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for analytics_item_header is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1260
    :sswitch_6f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_e3

    .line 1261
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e3
    const-string v0, "layout/analytics_item_chart_0"

    .line 1262
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 1263
    new-instance p3, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsItemChartBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1265
    :cond_e4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for analytics_item_chart is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 858
    :sswitch_70
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_e5

    .line 859
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e5
    const-string v0, "layout/analytics_empty_0"

    .line 860
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 861
    new-instance p3, Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/AnalyticsEmptyBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 863
    :cond_e6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for analytics_empty is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1044
    :sswitch_71
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_e7

    .line 1045
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e7
    const-string v0, "layout/activity_web_auth_0"

    .line 1046
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 1047
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityWebAuthBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1049
    :cond_e8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_web_auth is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1215
    :sswitch_72
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_e9

    .line 1216
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e9
    const-string v0, "layout/activity_tax_charge_0"

    .line 1217
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1218
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityTaxChargeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1220
    :cond_ea
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_tax_charge is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :sswitch_73
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_eb

    .line 97
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_eb
    const-string v0, "layout/activity_tariffs_0"

    .line 98
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 99
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityTariffsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityTariffsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 101
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_tariffs is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :sswitch_74
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_ed

    .line 436
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ed
    const-string v0, "layout/activity_sp_add_card_0"

    .line 437
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 438
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivitySpAddCardBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 440
    :cond_ee
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_sp_add_card is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1062
    :sswitch_75
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_ef

    .line 1063
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ef
    const-string v0, "layout/activity_sound_0"

    .line 1064
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 1065
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivitySoundBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1067
    :cond_f0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_sound is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 624
    :sswitch_76
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_f1

    .line 625
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f1
    const-string v0, "layout/activity_shop_order_0"

    .line 626
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 627
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopOrderBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 629
    :cond_f2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_shop_order is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 525
    :sswitch_77
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_f3

    .line 526
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f3
    const-string v0, "layout/activity_shop_info_0"

    .line 527
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 528
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 530
    :cond_f4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_shop_info is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 579
    :sswitch_78
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_f5

    .line 580
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f5
    const-string v0, "layout/activity_shop_details_0"

    .line 581
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 582
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 584
    :cond_f6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_shop_details is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1242
    :sswitch_79
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_f7

    .line 1243
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f7
    const-string v0, "layout/activity_shop_cart_0"

    .line 1244
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 1245
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityShopCartBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1247
    :cond_f8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_shop_cart is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 261
    :sswitch_7a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_f9

    .line 262
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f9
    const-string v0, "layout/activity_salary_tariff_instruction_0"

    .line 263
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 264
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivitySalaryTariffInstructionBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 266
    :cond_fa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_salary_tariff_instruction is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 714
    :sswitch_7b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_fb

    .line 715
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fb
    const-string v0, "layout/activity_rocket_ruble_info_0"

    .line 716
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 717
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityRocketRubleInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 719
    :cond_fc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_rocket_ruble_info is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1305
    :sswitch_7c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_fd

    .line 1306
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fd
    const-string v0, "layout/activity_rocket_cafe_0"

    .line 1307
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 1308
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityRocketCafeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1310
    :cond_fe
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_rocket_cafe is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 516
    :sswitch_7d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_ff

    .line 517
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ff
    const-string v0, "layout/activity_reference_pdf_0"

    .line 518
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    .line 519
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityReferencePdfBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 521
    :cond_100
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_reference_pdf is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 981
    :sswitch_7e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_101

    .line 982
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_101
    const-string v0, "layout/activity_reference_0"

    .line 983
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_102

    .line 984
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityReferenceBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 986
    :cond_102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_reference is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :sswitch_7f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_103

    .line 22
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_103
    const-string v0, "layout/activity_penalty_charge_0"

    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 24
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityPenaltyChargeBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 26
    :cond_104
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_penalty_charge is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :sswitch_80
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_105

    .line 142
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_105
    const-string v0, "layout/activity_pdf_view_0"

    .line 143
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 144
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityPdfViewBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 146
    :cond_106
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_pdf_view is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 804
    :sswitch_81
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_107

    .line 805
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_107
    const-string v0, "layout/activity_operation_modern_tag_receipt_0"

    .line 806
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 807
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernTagReceiptBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 809
    :cond_108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_operation_modern_tag_receipt is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :sswitch_82
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_109

    .line 271
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_109
    const-string v0, "layout/activity_operation_modern_receipt_0"

    .line 272
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 273
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityOperationModernReceiptBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 275
    :cond_10a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_operation_modern_receipt is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :sswitch_83
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_10b

    .line 364
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10b
    const-string v0, "layout/activity_new_passport_0"

    .line 365
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 366
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityNewPassportBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 368
    :cond_10c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_new_passport is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 444
    :sswitch_84
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_10d

    .line 445
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10d
    const-string v0, "layout/activity_invite_friend_info_0"

    .line 446
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 447
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityInviteFriendInfoBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 449
    :cond_10e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_invite_friend_info is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 831
    :sswitch_85
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_10f

    .line 832
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10f
    const-string v0, "layout/activity_first_refill_0"

    .line 833
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 834
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityFirstRefillBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 836
    :cond_110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_first_refill is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 849
    :sswitch_86
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_111

    .line 850
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_111
    const-string v0, "layout/activity_enter_cvv_0"

    .line 851
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 852
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityEnterCvvBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 854
    :cond_112
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_enter_cvv is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 678
    :sswitch_87
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_113

    .line 679
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_113
    const-string v0, "layout/activity_discount_details_0"

    .line 680
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 681
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityDiscountDetailsBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 683
    :cond_114
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_discount_details is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :sswitch_88
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_115

    .line 133
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_115
    const-string v0, "layout/activity_delivery_0"

    .line 134
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 135
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityDeliveryBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 137
    :cond_116
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_delivery is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 534
    :sswitch_89
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_117

    .line 535
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_117
    const-string v0, "layout/activity_charge_notification_0"

    .line 536
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 537
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityChargeNotificationBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 539
    :cond_118
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_charge_notification is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :sswitch_8a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_119

    .line 292
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_119
    const-string v0, "layout/activity_card_transfer_process_0"

    .line 293
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 294
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferProcessBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 296
    :cond_11a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_card_transfer_process is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1008
    :sswitch_8b
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_11b

    .line 1009
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11b
    const-string v0, "layout/activity_card_transfer_amount_0"

    .line 1010
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 1011
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardTransferAmountBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1013
    :cond_11c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_card_transfer_amount is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :sswitch_8c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_11d

    .line 196
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11d
    const-string v0, "layout/activity_card_limit_0"

    .line 197
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 198
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityCardLimitBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 200
    :cond_11e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_card_limit is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 453
    :sswitch_8d
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_11f

    .line 454
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11f
    const-string v0, "layout/activity_ap_manage_card_0"

    .line 455
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 456
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityApManageCardBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 458
    :cond_120
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_ap_manage_card is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1098
    :sswitch_8e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_121

    .line 1099
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "view must have a tag"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_121
    const-string v0, "layout/activity_ap_add_card_0"

    .line 1100
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1101
    new-instance p3, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;

    invoke-direct {p3, p1, p2}, Lru/rocketbank/r2d2/databinding/ActivityApAddCardBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object p3

    .line 1103
    :cond_122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The tag for activity_ap_add_card is invalid. Received: "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0022 -> :sswitch_8e
        0x7f0c0023 -> :sswitch_8d
        0x7f0c002a -> :sswitch_8c
        0x7f0c002c -> :sswitch_8b
        0x7f0c002d -> :sswitch_8a
        0x7f0c0031 -> :sswitch_89
        0x7f0c0038 -> :sswitch_88
        0x7f0c0039 -> :sswitch_87
        0x7f0c003c -> :sswitch_86
        0x7f0c003e -> :sswitch_85
        0x7f0c0041 -> :sswitch_84
        0x7f0c0046 -> :sswitch_83
        0x7f0c0048 -> :sswitch_82
        0x7f0c0049 -> :sswitch_81
        0x7f0c004b -> :sswitch_80
        0x7f0c004c -> :sswitch_7f
        0x7f0c0050 -> :sswitch_7e
        0x7f0c0051 -> :sswitch_7d
        0x7f0c0056 -> :sswitch_7c
        0x7f0c0057 -> :sswitch_7b
        0x7f0c0058 -> :sswitch_7a
        0x7f0c005a -> :sswitch_79
        0x7f0c005b -> :sswitch_78
        0x7f0c005c -> :sswitch_77
        0x7f0c005d -> :sswitch_76
        0x7f0c0060 -> :sswitch_75
        0x7f0c0061 -> :sswitch_74
        0x7f0c0064 -> :sswitch_73
        0x7f0c0065 -> :sswitch_72
        0x7f0c0069 -> :sswitch_71
        0x7f0c006d -> :sswitch_70
        0x7f0c006e -> :sswitch_6f
        0x7f0c006f -> :sswitch_6e
        0x7f0c0070 -> :sswitch_6d
        0x7f0c0071 -> :sswitch_6c
        0x7f0c0072 -> :sswitch_6b
        0x7f0c0073 -> :sswitch_6a
        0x7f0c0074 -> :sswitch_69
        0x7f0c0075 -> :sswitch_68
        0x7f0c0076 -> :sswitch_67
        0x7f0c0079 -> :sswitch_66
        0x7f0c007d -> :sswitch_65
        0x7f0c007f -> :sswitch_64
        0x7f0c0081 -> :sswitch_63
        0x7f0c008b -> :sswitch_62
        0x7f0c008c -> :sswitch_61
        0x7f0c00a3 -> :sswitch_60
        0x7f0c00a4 -> :sswitch_5f
        0x7f0c00a5 -> :sswitch_5e
        0x7f0c00a6 -> :sswitch_5d
        0x7f0c00a7 -> :sswitch_5c
        0x7f0c00a8 -> :sswitch_5b
        0x7f0c00a9 -> :sswitch_5a
        0x7f0c00ad -> :sswitch_59
        0x7f0c00ae -> :sswitch_58
        0x7f0c00af -> :sswitch_57
        0x7f0c00b0 -> :sswitch_56
        0x7f0c00b4 -> :sswitch_55
        0x7f0c00b5 -> :sswitch_54
        0x7f0c00b7 -> :sswitch_53
        0x7f0c00bb -> :sswitch_52
        0x7f0c00bd -> :sswitch_51
        0x7f0c00be -> :sswitch_50
        0x7f0c00c0 -> :sswitch_4f
        0x7f0c00c2 -> :sswitch_4e
        0x7f0c00c4 -> :sswitch_4d
        0x7f0c00c5 -> :sswitch_4c
        0x7f0c00c8 -> :sswitch_4b
        0x7f0c00c9 -> :sswitch_4a
        0x7f0c00ca -> :sswitch_49
        0x7f0c00cb -> :sswitch_48
        0x7f0c00cd -> :sswitch_47
        0x7f0c00d0 -> :sswitch_46
        0x7f0c00d1 -> :sswitch_45
        0x7f0c00d2 -> :sswitch_44
        0x7f0c00d6 -> :sswitch_43
        0x7f0c00d8 -> :sswitch_42
        0x7f0c00de -> :sswitch_41
        0x7f0c00df -> :sswitch_40
        0x7f0c00e4 -> :sswitch_3f
        0x7f0c00e6 -> :sswitch_3e
        0x7f0c00e7 -> :sswitch_3d
        0x7f0c00ea -> :sswitch_3c
        0x7f0c00f1 -> :sswitch_3b
        0x7f0c00f7 -> :sswitch_3a
        0x7f0c00fa -> :sswitch_39
        0x7f0c00fb -> :sswitch_38
        0x7f0c00fc -> :sswitch_37
        0x7f0c00fd -> :sswitch_36
        0x7f0c00fe -> :sswitch_35
        0x7f0c0109 -> :sswitch_34
        0x7f0c010b -> :sswitch_33
        0x7f0c010c -> :sswitch_32
        0x7f0c010d -> :sswitch_31
        0x7f0c010e -> :sswitch_30
        0x7f0c010f -> :sswitch_2f
        0x7f0c0111 -> :sswitch_2e
        0x7f0c0112 -> :sswitch_2d
        0x7f0c0113 -> :sswitch_2c
        0x7f0c011b -> :sswitch_2b
        0x7f0c011e -> :sswitch_2a
        0x7f0c011f -> :sswitch_29
        0x7f0c0126 -> :sswitch_28
        0x7f0c0127 -> :sswitch_27
        0x7f0c0129 -> :sswitch_26
        0x7f0c012e -> :sswitch_25
        0x7f0c012f -> :sswitch_24
        0x7f0c0131 -> :sswitch_23
        0x7f0c0132 -> :sswitch_22
        0x7f0c0133 -> :sswitch_21
        0x7f0c0134 -> :sswitch_20
        0x7f0c0135 -> :sswitch_1f
        0x7f0c0137 -> :sswitch_1e
        0x7f0c0138 -> :sswitch_1d
        0x7f0c013a -> :sswitch_1c
        0x7f0c0142 -> :sswitch_1b
        0x7f0c0143 -> :sswitch_1a
        0x7f0c0144 -> :sswitch_19
        0x7f0c0145 -> :sswitch_18
        0x7f0c0147 -> :sswitch_17
        0x7f0c014a -> :sswitch_16
        0x7f0c014b -> :sswitch_15
        0x7f0c014e -> :sswitch_14
        0x7f0c0186 -> :sswitch_13
        0x7f0c0187 -> :sswitch_12
        0x7f0c0188 -> :sswitch_11
        0x7f0c0191 -> :sswitch_10
        0x7f0c0192 -> :sswitch_f
        0x7f0c0194 -> :sswitch_e
        0x7f0c0197 -> :sswitch_d
        0x7f0c01ab -> :sswitch_c
        0x7f0c01ac -> :sswitch_b
        0x7f0c01ad -> :sswitch_a
        0x7f0c01ae -> :sswitch_9
        0x7f0c01b0 -> :sswitch_8
        0x7f0c01b1 -> :sswitch_7
        0x7f0c01b3 -> :sswitch_6
        0x7f0c01b6 -> :sswitch_5
        0x7f0c01b7 -> :sswitch_4
        0x7f0c01ba -> :sswitch_3
        0x7f0c01bf -> :sswitch_2
        0x7f0c01c8 -> :sswitch_1
        0x7f0c01ca -> :sswitch_0
    .end sparse-switch
.end method

.method public getDataBinder(Landroid/databinding/DataBindingComponent;[Landroid/view/View;I)Landroid/databinding/ViewDataBinding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLayoutId(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1326
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x7f0c00af

    const v3, 0x7f0c007f

    const v4, 0x7f0c0147

    const v5, 0x7f0c01ba

    const v6, 0x7f0c00d0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "layout/layout_miles_compensation_0"

    .line 1923
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c012e

    return p1

    :sswitch_1
    const-string v1, "layout/feed_item_month_cashback_0"

    .line 1563
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00b4

    return p1

    :sswitch_2
    const-string v1, "layout/fragment_small_account_0"

    .line 1803
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00fb

    return p1

    :sswitch_3
    const-string v1, "layout/discounts_item_selected_0"

    .line 1551
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00a7

    return p1

    :sswitch_4
    const-string v1, "layout/fragment_tariff_details_0"

    .line 1353
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00fd

    return p1

    :sswitch_5
    const-string v1, "layout/activity_salary_tariff_instruction_0"

    .line 1503
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0058

    return p1

    :sswitch_6
    const-string v1, "layout/fragment_input_phone_number_0"

    .line 1779
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00de

    return p1

    :sswitch_7
    const-string v1, "layout/layout_message_out_operation_0"

    .line 1851
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0127

    return p1

    :sswitch_8
    const-string v1, "layout/discounts_selected_0"

    .line 1971
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00a9

    return p1

    :sswitch_9
    const-string v1, "layout/fragment_change_codeword_0"

    .line 1671
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00cb

    return p1

    :sswitch_a
    const-string v1, "layout/fragment_profile_0"

    .line 1965
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00f1

    return p1

    :sswitch_b
    const-string v1, "layout/include_tab_0"

    .line 1401
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c010c

    return p1

    :sswitch_c
    const-string v1, "layout-v21/fragment_delivery_date_0"

    .line 1371
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v6

    :sswitch_d
    const-string v1, "layout/activity_shop_details_0"

    .line 1719
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c005b

    return p1

    :sswitch_e
    const-string v1, "layout/discounts_not_selected_0"

    .line 2019
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00a8

    return p1

    :sswitch_f
    const-string v1, "layout/fragment_new_safe_0"

    .line 1533
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00e7

    return p1

    :sswitch_10
    const-string v1, "layout/layout_operation_stat_month_0"

    .line 1611
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c013a

    return p1

    :sswitch_11
    const-string v1, "layout/discount_category_item_0"

    .line 1617
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00a4

    return p1

    :sswitch_12
    const-string v1, "layout/activity_sound_0"

    .line 2049
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0060

    return p1

    :sswitch_13
    const-string v1, "layout/list_item_card_delete_0"

    .line 1959
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c014a

    return p1

    :sswitch_14
    const-string v1, "layout/remittance_check_info_fragment_0"

    .line 1437
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0197

    return p1

    :sswitch_15
    const-string v1, "layout/feed_item_onetwotrip_0"

    .line 1767
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00b7

    return p1

    :sswitch_16
    const-string v1, "layout/analytics_item_merchant_operation_0"

    .line 1737
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0070

    return p1

    :sswitch_17
    const-string v1, "layout/reference_item_0"

    .line 1599
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0194

    return p1

    :sswitch_18
    const-string v1, "layout/fragment_new_card_0"

    .line 2067
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00e4

    return p1

    :sswitch_19
    const-string v1, "layout/delivery_toolbar_0"

    .line 2043
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c008c

    return p1

    :sswitch_1a
    const-string v1, "layout/change_code_activity_0"

    .line 1857
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0081

    return p1

    :sswitch_1b
    const-string v1, "layout/layout_operation_category_0"

    .line 1431
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0131

    return p1

    :sswitch_1c
    const-string v1, "layout/fragment_shop_feed_0"

    .line 1473
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00fa

    return p1

    :sswitch_1d
    const-string v1, "layout/activity_sp_add_card_0"

    .line 1623
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0061

    return p1

    :sswitch_1e
    const-string v1, "layout/layout_sound_item_0"

    .line 2157
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0142

    return p1

    :sswitch_1f
    const-string v1, "layout/analytics_item_chart_0"

    .line 2181
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c006e

    return p1

    :sswitch_20
    const-string v1, "layout/activity_penalty_charge_0"

    .line 1335
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c004c

    return p1

    :sswitch_21
    const-string v1, "layout/activity_rocket_cafe_0"

    .line 2211
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0056

    return p1

    :sswitch_22
    const-string v1, "layout/activity_shop_info_0"

    .line 1683
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c005c

    return p1

    :sswitch_23
    const-string v1, "layout/analytics_item_section_person_0"

    .line 1881
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0073

    return p1

    :sswitch_24
    const-string v1, "layout/activity_shop_cart_0"

    .line 2169
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c005a

    return p1

    :sswitch_25
    const-string v1, "layout/fingerprint_dialog_0"

    .line 2103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00c0

    return p1

    :sswitch_26
    const-string v1, "layout/transfer_tabs_fragment_0"

    .line 2121
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01bf

    return p1

    :sswitch_27
    const-string v1, "layout/layout_operation_action_0"

    .line 2091
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c012f

    return p1

    :sswitch_28
    const-string v1, "layout/activity_delivery_0"

    .line 1413
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0038

    return p1

    :sswitch_29
    const-string v1, "layout/fragment_rocket_rouble_0"

    .line 1587
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00f7

    return p1

    :sswitch_2a
    const-string v1, "layout/individual_transfer_0"

    .line 1647
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c010e

    return p1

    :sswitch_2b
    const-string v1, "layout/toolbar_with_button_only_0"

    .line 1491
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v5

    :sswitch_2c
    const-string v1, "layout/activity_tariffs_0"

    .line 1389
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0064

    return p1

    :sswitch_2d
    const-string v1, "layout/activity_card_transfer_amount_0"

    .line 2013
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c002c

    return p1

    :sswitch_2e
    const-string v1, "layout/tax_charges_fragment_0"

    .line 1929
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01b7

    return p1

    :sswitch_2f
    const-string v1, "layout/fragment_new_passport_step_0"

    .line 1569
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00e6

    return p1

    :sswitch_30
    const-string v1, "layout/fragment_analytics_base_0"

    .line 1731
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00c2

    return p1

    :sswitch_31
    const-string v1, "layout/tariff_item_0"

    .line 1539
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01b6

    return p1

    :sswitch_32
    const-string v1, "layout/activity_enter_cvv_0"

    .line 1899
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c003c

    return p1

    :sswitch_33
    const-string v1, "layout-v21/toolbar_with_button_only_0"

    .line 1497
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v5

    :sswitch_34
    const-string v1, "layout/shop_cart_item_0"

    .line 1407
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01ad

    return p1

    :sswitch_35
    const-string v1, "layout/item_address_0"

    .line 1341
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0111

    return p1

    :sswitch_36
    const-string v1, "layout/feed_item_delivery_0"

    .line 1701
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00b0

    return p1

    :sswitch_37
    const-string v1, "layout/activity_first_refill_0"

    .line 1887
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c003e

    return p1

    :sswitch_38
    const-string v1, "layout/activity_invite_friend_info_0"

    .line 1629
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0041

    return p1

    :sswitch_39
    const-string v1, "layout/shop_cart_deficit_0"

    .line 2097
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01ac

    return p1

    :sswitch_3a
    const-string v1, "layout/layout_general_statistics_0"

    .line 1755
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c011f

    return p1

    :sswitch_3b
    const-string v1, "layout/fragment_open_safe_account_0"

    .line 2085
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00ea

    return p1

    :sswitch_3c
    const-string v1, "layout/parallax_round_image_item_0"

    .line 1557
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0187

    return p1

    :sswitch_3d
    const-string v1, "layout/fragment_delivery_map_0"

    .line 1395
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00d1

    return p1

    :sswitch_3e
    const-string v1, "layout/activity_charge_notification_0"

    .line 1689
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0031

    return p1

    :sswitch_3f
    const-string v1, "layout/feed_item_transfer_to_safe_account_0"

    .line 1425
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00be

    return p1

    :sswitch_40
    const-string v1, "layout/activity_web_auth_0"

    .line 2037
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0069

    return p1

    :sswitch_41
    const-string v1, "layout/activity_reference_0"

    .line 1995
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0050

    return p1

    :sswitch_42
    const-string v1, "layout/radio_button_orange_0"

    .line 1707
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0192

    return p1

    :sswitch_43
    const-string v1, "layout/friends_fragment_0"

    .line 1953
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0109

    return p1

    :sswitch_44
    const-string v1, "layout/list_item_card_limit_0"

    .line 1917
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c014e

    return p1

    :sswitch_45
    const-string v1, "layout/budget_transfer_0"

    .line 2145
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0079

    return p1

    :sswitch_46
    const-string v1, "layout/activity_operation_modern_tag_receipt_0"

    .line 1869
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0049

    return p1

    :sswitch_47
    const-string v1, "layout/layout_operation_description_0"

    .line 1797
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0132

    return p1

    :sswitch_48
    const-string v1, "layout/analytics_empty_0"

    .line 1905
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c006d

    return p1

    :sswitch_49
    const-string v1, "layout/include_toolbar_0"

    .line 1743
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c010d

    return p1

    :sswitch_4a
    const-string v1, "layout/fragment_discounts_0"

    .line 1659
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00d6

    return p1

    :sswitch_4b
    const-string v1, "layout/layout_operation_source_0"

    .line 2115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0138

    return p1

    :sswitch_4c
    const-string v1, "layout/fragment_delivery_scheduled_0"

    .line 2187
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00d2

    return p1

    :sswitch_4d
    const-string v1, "layout/layout_statistics_total_item_0"

    .line 1875
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0145

    return p1

    :sswitch_4e
    const-string v1, "layout/fragment_transfer_between_cards_0"

    .line 1653
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00fe

    return p1

    :sswitch_4f
    const-string v1, "layout/shop_cart_amount_0"

    .line 1893
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01ab

    return p1

    :sswitch_50
    const-string v1, "layout/layout_statistics_item_0"

    .line 1365
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0144

    return p1

    :sswitch_51
    const-string v1, "layout/activity_reference_pdf_0"

    .line 1677
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0051

    return p1

    :sswitch_52
    const-string v1, "layout/discount_game_item_0"

    .line 1581
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00a5

    return p1

    :sswitch_53
    const-string v1, "layout/activity_rocket_ruble_info_0"

    .line 1809
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0057

    return p1

    :sswitch_54
    const-string v1, "layout/list_item_card_header_0"

    .line 1935
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c014b

    return p1

    :sswitch_55
    const-string v1, "layout/item_calendar_0"

    .line 1761
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0112

    return p1

    :sswitch_56
    const-string v1, "layout/fragment_invite_friends_0"

    .line 1485
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00df

    return p1

    :sswitch_57
    const-string v1, "layout-v21/layout_toolbar_with_button_0"

    .line 1947
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :sswitch_58
    const-string v1, "layout/layout_message_out_text_0"

    .line 1329
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0129

    return p1

    :sswitch_59
    const-string v1, "layout/feed_item_push_0"

    .line 1845
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00bb

    return p1

    :sswitch_5a
    const-string v1, "layout/layout_statistics_action_item_0"

    .line 2001
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0143

    return p1

    :sswitch_5b
    const-string v1, "layout-large/card_transfer_header_layout_0"

    .line 1983
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :sswitch_5c
    const-string v1, "layout/card_transfer_header_layout_0"

    .line 1989
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :sswitch_5d
    const-string v1, "layout/fragment_check_0"

    .line 1839
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00cd

    return p1

    :sswitch_5e
    const-string v1, "layout/layout_operation_miles_0"

    .line 1641
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0135

    return p1

    :sswitch_5f
    const-string v1, "layout/activity_shop_order_0"

    .line 1749
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c005d

    return p1

    :sswitch_60
    const-string v1, "layout/activity_card_transfer_process_0"

    .line 1527
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c002d

    return p1

    :sswitch_61
    const-string v1, "layout/fragment_cardblock_0"

    .line 1815
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00c9

    return p1

    :sswitch_62
    const-string v1, "layout/analytics_item_tag_operation_0"

    .line 1479
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0074

    return p1

    :sswitch_63
    const-string v1, "layout/fragment_bank_transfer_0"

    .line 1467
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00c4

    return p1

    :sswitch_64
    const-string v1, "layout/feed_item_new_passport_0"

    .line 1545
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00b5

    return p1

    :sswitch_65
    const-string v1, "layout/bank_info_0"

    .line 2007
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0076

    return p1

    :sswitch_66
    const-string v1, "layout/feed_item_salary_tariffs_0"

    .line 2205
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00bd

    return p1

    :sswitch_67
    const-string v1, "layout/layout_operation_incomming_0"

    .line 2175
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0133

    return p1

    :sswitch_68
    const-string v1, "layout/widget_address_view_0"

    .line 2025
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01c8

    return p1

    :sswitch_69
    const-string v1, "layout/layout_operation_outgoing_0"

    .line 2061
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0137

    return p1

    :sswitch_6a
    const-string v1, "layout/widget_calendar_view_0"

    .line 2199
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01ca

    return p1

    :sswitch_6b
    const-string v1, "layout/feed_item_ads_0"

    .line 2109
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00ad

    return p1

    :sswitch_6c
    const-string v1, "layout/atms_map_fragment_0"

    .line 2031
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0075

    return p1

    :sswitch_6d
    const-string v1, "layout/analytics_item_section_0"

    .line 2127
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0072

    return p1

    :sswitch_6e
    const-string v1, "layout/info_onetwotrip_0"

    .line 1665
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c010f

    return p1

    :sswitch_6f
    const-string v1, "layout/dialog_notification_view_0"

    .line 1383
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00a3

    return p1

    :sswitch_70
    const-string v1, "layout/feed_item_chosen_month_cashback_0"

    .line 1515
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :sswitch_71
    const-string v1, "layout/discounts_grid_container_0"

    .line 1347
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00a6

    return p1

    :sswitch_72
    const-string v1, "layout/corporate_transfer_0"

    .line 2055
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c008b

    return p1

    :sswitch_73
    const-string v1, "layout/fragment_change_0"

    .line 1443
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00ca

    return p1

    :sswitch_74
    const-string v1, "layout/fragment_delivery_date_0"

    .line 1377
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v6

    :sswitch_75
    const-string v1, "layout/layout_operation_map_0"

    .line 1821
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0134

    return p1

    :sswitch_76
    const-string v1, "layout/radio_button_color_0"

    .line 2133
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0191

    return p1

    :sswitch_77
    const-string v1, "layout/fragment_feed_0"

    .line 2139
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00d8

    return p1

    :sswitch_78
    const-string v1, "layout/activity_ap_manage_card_0"

    .line 1635
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0023

    return p1

    :sswitch_79
    const-string v1, "layout/penalty_charges_fragment_0"

    .line 1911
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0188

    return p1

    :sswitch_7a
    const-string v1, "layout/fragment_card_0"

    .line 1725
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00c5

    return p1

    :sswitch_7b
    const-string v1, "layout/gkh_layput_0"

    .line 1773
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c010b

    return p1

    :sswitch_7c
    const-string v1, "layout/layout_toolbar_with_button_0"

    .line 1941
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v4

    :sswitch_7d
    const-string v1, "layout/activity_new_passport_0"

    .line 1575
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0046

    return p1

    :sswitch_7e
    const-string v1, "layout/fragment_small_account_choose_0"

    .line 2079
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00fc

    return p1

    :sswitch_7f
    const-string v1, "layout/fragment_card_detail_0"

    .line 1605
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00c8

    return p1

    :sswitch_80
    const-string v1, "layout/analytics_item_header_0"

    .line 1449
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c006f

    return p1

    :sswitch_81
    const-string v1, "layout/layout_message_out_image_0"

    .line 2163
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0126

    return p1

    :sswitch_82
    const-string v1, "layout/layout_dialog_change_0"

    .line 1461
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c011e

    return p1

    :sswitch_83
    const-string v1, "layout-v21/feed_item_chosen_month_cashback_0"

    .line 1521
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :sswitch_84
    const-string v1, "layout/activity_tax_charge_0"

    .line 2151
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0065

    return p1

    :sswitch_85
    const-string v1, "layout/card_limit_item_0"

    .line 1977
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c007d

    return p1

    :sswitch_86
    const-string v1, "layout/activity_operation_modern_receipt_0"

    .line 1509
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0048

    return p1

    :sswitch_87
    const-string v1, "layout/activity_discount_details_0"

    .line 1785
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0039

    return p1

    :sswitch_88
    const-string v1, "layout/layout_card_with_actions_0"

    .line 1863
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c011b

    return p1

    :sswitch_89
    const-string v1, "layout/shop_details_image_0"

    .line 2193
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01ae

    return p1

    :sswitch_8a
    const-string v1, "layout/item_delivery_time_interval_0"

    .line 1713
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0113

    return p1

    :sswitch_8b
    const-string v1, "layout/shop_list_item_0"

    .line 1593
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01b0

    return p1

    :sswitch_8c
    const-string v1, "layout/shop_selected_size_0"

    .line 1827
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01b3

    return p1

    :sswitch_8d
    const-string v1, "layout/feed_item_ap_0"

    .line 1695
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c00ae

    return p1

    :sswitch_8e
    const-string v1, "layout/shop_selected_color_0"

    .line 1359
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c01b1

    return p1

    :sswitch_8f
    const-string v1, "layout/analytics_item_operation_0"

    .line 1833
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0071

    return p1

    :sswitch_90
    const-string v1, "layout/parallax_header_0"

    .line 1791
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0186

    return p1

    :sswitch_91
    const-string v1, "layout/activity_pdf_view_0"

    .line 1419
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c004b

    return p1

    :sswitch_92
    const-string v1, "layout/activity_card_limit_0"

    .line 1455
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c002a

    return p1

    :sswitch_93
    const-string v1, "layout/activity_ap_add_card_0"

    .line 2073
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c0022

    return p1

    :cond_1
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7eec227c -> :sswitch_93
        -0x79444f78 -> :sswitch_92
        -0x7934c632 -> :sswitch_91
        -0x78835aff -> :sswitch_90
        -0x77881636 -> :sswitch_8f
        -0x75f50e4c -> :sswitch_8e
        -0x75448610 -> :sswitch_8d
        -0x7531ffee -> :sswitch_8c
        -0x73233abf -> :sswitch_8b
        -0x6f3936dc -> :sswitch_8a
        -0x6e0ae435 -> :sswitch_89
        -0x6c74dc4c -> :sswitch_88
        -0x6ae6a240 -> :sswitch_87
        -0x69916294 -> :sswitch_86
        -0x65d6a7ce -> :sswitch_85
        -0x638b827c -> :sswitch_84
        -0x610bbcd1 -> :sswitch_83
        -0x5d637218 -> :sswitch_82
        -0x5ccdc46d -> :sswitch_81
        -0x5bb56234 -> :sswitch_80
        -0x5bace319 -> :sswitch_7f
        -0x5b435204 -> :sswitch_7e
        -0x5b03c973 -> :sswitch_7d
        -0x55298698 -> :sswitch_7c
        -0x54177384 -> :sswitch_7b
        -0x4bcff955 -> :sswitch_7a
        -0x4732dc84 -> :sswitch_79
        -0x46a8dcaa -> :sswitch_78
        -0x467efa47 -> :sswitch_77
        -0x45547b30 -> :sswitch_76
        -0x4550f15b -> :sswitch_75
        -0x42782e20 -> :sswitch_74
        -0x41dc5b35 -> :sswitch_73
        -0x40806945 -> :sswitch_72
        -0x3e102835 -> :sswitch_71
        -0x3bc613b9 -> :sswitch_70
        -0x3b51a488 -> :sswitch_6f
        -0x3a509f78 -> :sswitch_6e
        -0x36b4dfb8 -> :sswitch_6d
        -0x339329bb -> :sswitch_6c
        -0x33515f6f -> :sswitch_6b
        -0x32286e3f -> :sswitch_6a
        -0x31c8117b -> :sswitch_69
        -0x30582209 -> :sswitch_68
        -0x2f569566 -> :sswitch_67
        -0x2dd3f6a5 -> :sswitch_66
        -0x2be85f23 -> :sswitch_65
        -0x2bc60eee -> :sswitch_64
        -0x2b4175eb -> :sswitch_63
        -0x2afb185b -> :sswitch_62
        -0x29ef4dbc -> :sswitch_61
        -0x2938ca50 -> :sswitch_60
        -0x280292bf -> :sswitch_5f
        -0x2767de39 -> :sswitch_5e
        -0x22f4b7f1 -> :sswitch_5d
        -0x2240a45d -> :sswitch_5c
        -0x2177812f -> :sswitch_5b
        -0x2041495f -> :sswitch_5a
        -0x1c5225e5 -> :sswitch_59
        -0x19e97c89 -> :sswitch_58
        -0x18948e80 -> :sswitch_57
        -0x168a6246 -> :sswitch_56
        -0x15966cca -> :sswitch_55
        -0x12e0ab83 -> :sswitch_54
        -0x11b49a1a -> :sswitch_53
        -0x1127a548 -> :sswitch_52
        -0x106083bc -> :sswitch_51
        -0xf2949f0 -> :sswitch_50
        -0xc18963c -> :sswitch_4f
        -0xbac59cd -> :sswitch_4e
        -0xb6fd595 -> :sswitch_4d
        -0xaec9c43 -> :sswitch_4c
        -0x8dbd28c -> :sswitch_4b
        -0x7556f27 -> :sswitch_4a
        -0x633f610 -> :sswitch_49
        -0x62d69a0 -> :sswitch_48
        -0x47c52bb -> :sswitch_47
        -0x4165a79 -> :sswitch_46
        0xab1671 -> :sswitch_45
        0x3c6534d -> :sswitch_44
        0x4ae89f0 -> :sswitch_43
        0x52d9763 -> :sswitch_42
        0x5ff6cd1 -> :sswitch_41
        0x666fb6f -> :sswitch_40
        0x91b792c -> :sswitch_3f
        0x9f1e51c -> :sswitch_3e
        0xeddfbec -> :sswitch_3d
        0xf1e22bc -> :sswitch_3c
        0x1158ff57 -> :sswitch_3b
        0x11bb0a9b -> :sswitch_3a
        0x1597ca20 -> :sswitch_39
        0x15b0edf5 -> :sswitch_38
        0x163c6061 -> :sswitch_37
        0x17131075 -> :sswitch_36
        0x19d501fe -> :sswitch_35
        0x1a42847f -> :sswitch_34
        0x1ab7c1b2 -> :sswitch_33
        0x1de631c2 -> :sswitch_32
        0x1f0fef5a -> :sswitch_31
        0x2041c885 -> :sswitch_30
        0x21179001 -> :sswitch_2f
        0x216f7f9a -> :sswitch_2e
        0x230d10b9 -> :sswitch_2d
        0x249ee995 -> :sswitch_2c
        0x2593a39a -> :sswitch_2b
        0x26aae11d -> :sswitch_2a
        0x274b67d5 -> :sswitch_29
        0x27b14b70 -> :sswitch_28
        0x2c5628cf -> :sswitch_27
        0x2e434453 -> :sswitch_26
        0x334b75b9 -> :sswitch_25
        0x33a508cf -> :sswitch_24
        0x39773aae -> :sswitch_23
        0x3e93c6dd -> :sswitch_22
        0x40d8a92e -> :sswitch_21
        0x42e420e6 -> :sswitch_20
        0x44033381 -> :sswitch_1f
        0x458943c4 -> :sswitch_1e
        0x464a5296 -> :sswitch_1d
        0x4aa2e18e -> :sswitch_1c
        0x4e515b97 -> :sswitch_1b
        0x4fd55a88 -> :sswitch_1a
        0x522b9ce6 -> :sswitch_19
        0x5302412a -> :sswitch_18
        0x583051bd -> :sswitch_17
        0x5a77392f -> :sswitch_16
        0x5c17ea0c -> :sswitch_15
        0x5ffa6d5f -> :sswitch_14
        0x6074a81b -> :sswitch_13
        0x64ef2815 -> :sswitch_12
        0x65b7a8ac -> :sswitch_11
        0x678687ae -> :sswitch_10
        0x6e4a5a67 -> :sswitch_f
        0x700b944a -> :sswitch_e
        0x700f82b5 -> :sswitch_d
        0x70cc95f8 -> :sswitch_c
        0x737d018a -> :sswitch_b
        0x73a64af0 -> :sswitch_a
        0x746c5a2d -> :sswitch_9
        0x76ea945e -> :sswitch_8
        0x773f991f -> :sswitch_7
        0x788f93ea -> :sswitch_6
        0x7addbace -> :sswitch_5
        0x7c227382 -> :sswitch_4
        0x7c89e6a6 -> :sswitch_3
        0x7eadb4bc -> :sswitch_2
        0x7eb998ba -> :sswitch_1
        0x7ebaa57c -> :sswitch_0
    .end sparse-switch
.end method
