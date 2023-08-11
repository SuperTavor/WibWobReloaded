.class public interface abstract Lcom/adjust/sdk/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final ACTIVITY_STATE_FILENAME:Ljava/lang/String; = "AdjustIoActivityState"

.field public static final ATTRIBUTION_FILENAME:Ljava/lang/String; = "AdjustAttribution"

.field public static final AUTHORITY:Ljava/lang/String; = "app.adjust.com"

.field public static final BASE_URL:Ljava/lang/String; = "https://app.adjust.com"

.field public static final CLIENT_SDK:Ljava/lang/String; = "android4.7.0"

.field public static final CONNECTION_TIMEOUT:I = 0xea60

.field public static final DEEPLINK:Ljava/lang/String; = "deeplink"

.field public static final ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final HIGH:Ljava/lang/String; = "high"

.field public static final LARGE:Ljava/lang/String; = "large"

.field public static final LOGTAG:Ljava/lang/String; = "Adjust"

.field public static final LONG:Ljava/lang/String; = "long"

.field public static final LOW:Ljava/lang/String; = "low"

.field public static final MALFORMED:Ljava/lang/String; = "malformed"

.field public static final MAX_WAIT_INTERVAL:I = 0xea60

.field public static final MD5:Ljava/lang/String; = "MD5"

.field public static final MEDIUM:Ljava/lang/String; = "medium"

.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final ONE_HOUR:I = 0x36ee80

.field public static final ONE_MINUTE:I = 0xea60

.field public static final ONE_SECOND:I = 0x3e8

.field public static final PLUGINS:Ljava/util/List;

.field public static final REFERRER:Ljava/lang/String; = "referrer"

.field public static final REFTAG:Ljava/lang/String; = "reftag"

.field public static final SCHEME:Ljava/lang/String; = "https"

.field public static final SHA1:Ljava/lang/String; = "SHA-1"

.field public static final SMALL:Ljava/lang/String; = "small"

.field public static final SOCKET_TIMEOUT:I = 0xea60

.field public static final THIRTY_MINUTES:I = 0x1b7740

.field public static final XLARGE:Ljava/lang/String; = "xlarge"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/Constants;->PLUGINS:Ljava/util/List;

    return-void
.end method
