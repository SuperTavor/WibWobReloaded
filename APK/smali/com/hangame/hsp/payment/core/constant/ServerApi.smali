.class public Lcom/hangame/hsp/payment/core/constant/ServerApi;
.super Ljava/lang/Object;


# static fields
.field public static final PURCHASE_CALLBACK_ALPHA:Ljava/lang/String; = "https://alpha-mobill.toast.com/transactions/"

.field public static final PURCHASE_CALLBACK_REAL:Ljava/lang/String; = "https://mobill.toast.com/transactions/"

.field public static final REQUEST_BI_LOG_NOTIFY_EVENT:Ljava/lang/String; = "/NotifyEvent"

.field public static final REQUEST_LOGIN_CHECK_PASSWORD:Ljava/lang/String; = "/hsp/authIdentity.nhn"

.field public static final REQUEST_PAYMENT_PREPARE_ACTION:Ljava/lang/String; = "/prepare.nhn"

.field public static final REQUEST_STORE_GATEWAY_ADD_ITEM_ACTION:Ljava/lang/String; = "/addItem.nhn"

.field public static final REQUEST_STORE_GATEWAY_CHECK_PROCEEDED:Ljava/lang/String; = "/checkTx.nhn"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
