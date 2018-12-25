package ru.rocketbank.core.network.model;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.shop.Variant;

/* compiled from: ShopItemResponse.kt */
public final class ShopItemResponse {
    private ShopImage cart_image;
    private String description = "";
    private String feed_description;
    private ShopImage feed_image;
    private String feed_text_color;
    private long id = -1;
    private List<ShopImage> info_images;
    private Double price;
    private Double price_old;
    private String price_replacement;
    private String promo_title;
    private String promo_title_color;
    private boolean promo_title_front = true;
    private Float promo_title_opacity;
    private String sizes_table_url;
    private String structure;
    private String title = "";
    private List<Variant> variants;

    public final long getId() {
        return this.id;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.title = str;
    }

    public final String getDescription() {
        return this.description;
    }

    public final void setDescription(String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.description = str;
    }

    public final String getPrice_replacement() {
        return this.price_replacement;
    }

    public final void setPrice_replacement(String str) {
        this.price_replacement = str;
    }

    public final Double getPrice() {
        return this.price;
    }

    public final void setPrice(Double d) {
        this.price = d;
    }

    public final Double getPrice_old() {
        return this.price_old;
    }

    public final void setPrice_old(Double d) {
        this.price_old = d;
    }

    public final String getFeed_description() {
        return this.feed_description;
    }

    public final void setFeed_description(String str) {
        this.feed_description = str;
    }

    public final ShopImage getFeed_image() {
        return this.feed_image;
    }

    public final void setFeed_image(ShopImage shopImage) {
        this.feed_image = shopImage;
    }

    public final String getFeed_text_color() {
        return this.feed_text_color;
    }

    public final void setFeed_text_color(String str) {
        this.feed_text_color = str;
    }

    public final String getPromo_title() {
        return this.promo_title;
    }

    public final void setPromo_title(String str) {
        this.promo_title = str;
    }

    public final String getPromo_title_color() {
        return this.promo_title_color;
    }

    public final void setPromo_title_color(String str) {
        this.promo_title_color = str;
    }

    public final boolean getPromo_title_front() {
        return this.promo_title_front;
    }

    public final void setPromo_title_front(boolean z) {
        this.promo_title_front = z;
    }

    public final Float getPromo_title_opacity() {
        return this.promo_title_opacity;
    }

    public final void setPromo_title_opacity(Float f) {
        this.promo_title_opacity = f;
    }

    public final String getStructure() {
        return this.structure;
    }

    public final void setStructure(String str) {
        this.structure = str;
    }

    public final List<Variant> getVariants() {
        return this.variants;
    }

    public final void setVariants(List<Variant> list) {
        this.variants = list;
    }

    public final String getSizes_table_url() {
        return this.sizes_table_url;
    }

    public final void setSizes_table_url(String str) {
        this.sizes_table_url = str;
    }

    public final List<ShopImage> getInfo_images() {
        return this.info_images;
    }

    public final void setInfo_images(List<ShopImage> list) {
        this.info_images = list;
    }

    public final ShopImage getCart_image() {
        return this.cart_image;
    }

    public final void setCart_image(ShopImage shopImage) {
        this.cart_image = shopImage;
    }
}
