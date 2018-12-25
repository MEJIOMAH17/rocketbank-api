package com.facebook;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class GraphResponse {
    private static final String BODY_KEY = "body";
    private static final String CODE_KEY = "code";
    public static final String NON_JSON_RESPONSE_PROPERTY = "FACEBOOK_NON_JSON_RESULT";
    private static final String RESPONSE_LOG_TAG = "Response";
    public static final String SUCCESS_KEY = "success";
    private final HttpURLConnection connection;
    private final FacebookRequestError error;
    private final JSONObject graphObject;
    private final JSONArray graphObjectArray;
    private final String rawResponse;
    private final GraphRequest request;

    public enum PagingDirection {
        NEXT,
        PREVIOUS
    }

    GraphResponse(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    GraphResponse(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    GraphResponse(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, null, facebookRequestError);
    }

    GraphResponse(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        this.request = graphRequest;
        this.connection = httpURLConnection;
        this.rawResponse = str;
        this.graphObject = jSONObject;
        this.graphObjectArray = jSONArray;
        this.error = facebookRequestError;
    }

    public final FacebookRequestError getError() {
        return this.error;
    }

    public final JSONObject getJSONObject() {
        return this.graphObject;
    }

    public final JSONArray getJSONArray() {
        return this.graphObjectArray;
    }

    public final HttpURLConnection getConnection() {
        return this.connection;
    }

    public GraphRequest getRequest() {
        return this.request;
    }

    public String getRawResponse() {
        return this.rawResponse;
    }

    public com.facebook.GraphRequest getRequestForPagedResults(com.facebook.GraphResponse.PagingDirection r5) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r4 = this;
        r0 = r4.graphObject;
        r1 = 0;
        if (r0 == 0) goto L_0x0021;
    L_0x0005:
        r0 = r4.graphObject;
        r2 = "paging";
        r0 = r0.optJSONObject(r2);
        if (r0 == 0) goto L_0x0021;
    L_0x000f:
        r2 = com.facebook.GraphResponse.PagingDirection.NEXT;
        if (r5 != r2) goto L_0x001a;
    L_0x0013:
        r5 = "next";
        r5 = r0.optString(r5);
        goto L_0x0022;
    L_0x001a:
        r5 = "previous";
        r5 = r0.optString(r5);
        goto L_0x0022;
    L_0x0021:
        r5 = r1;
    L_0x0022:
        r0 = com.facebook.internal.Utility.isNullOrEmpty(r5);
        if (r0 == 0) goto L_0x0029;
    L_0x0028:
        return r1;
    L_0x0029:
        if (r5 == 0) goto L_0x0038;
    L_0x002b:
        r0 = r4.request;
        r0 = r0.getUrlForSingleRequest();
        r0 = r5.equals(r0);
        if (r0 == 0) goto L_0x0038;
    L_0x0037:
        return r1;
    L_0x0038:
        r0 = new com.facebook.GraphRequest;	 Catch:{ MalformedURLException -> 0x0049 }
        r2 = r4.request;	 Catch:{ MalformedURLException -> 0x0049 }
        r2 = r2.getAccessToken();	 Catch:{ MalformedURLException -> 0x0049 }
        r3 = new java.net.URL;	 Catch:{ MalformedURLException -> 0x0049 }
        r3.<init>(r5);	 Catch:{ MalformedURLException -> 0x0049 }
        r0.<init>(r2, r3);	 Catch:{ MalformedURLException -> 0x0049 }
        return r0;
    L_0x0049:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphResponse.getRequestForPagedResults(com.facebook.GraphResponse$PagingDirection):com.facebook.GraphRequest");
    }

    public java.lang.String toString() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r5 = this;
        r0 = java.util.Locale.US;	 Catch:{ IOException -> 0x0020 }
        r1 = "%d";	 Catch:{ IOException -> 0x0020 }
        r2 = 1;	 Catch:{ IOException -> 0x0020 }
        r2 = new java.lang.Object[r2];	 Catch:{ IOException -> 0x0020 }
        r3 = 0;	 Catch:{ IOException -> 0x0020 }
        r4 = r5.connection;	 Catch:{ IOException -> 0x0020 }
        if (r4 == 0) goto L_0x0013;	 Catch:{ IOException -> 0x0020 }
    L_0x000c:
        r4 = r5.connection;	 Catch:{ IOException -> 0x0020 }
        r4 = r4.getResponseCode();	 Catch:{ IOException -> 0x0020 }
        goto L_0x0015;	 Catch:{ IOException -> 0x0020 }
    L_0x0013:
        r4 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;	 Catch:{ IOException -> 0x0020 }
    L_0x0015:
        r4 = java.lang.Integer.valueOf(r4);	 Catch:{ IOException -> 0x0020 }
        r2[r3] = r4;	 Catch:{ IOException -> 0x0020 }
        r0 = java.lang.String.format(r0, r1, r2);	 Catch:{ IOException -> 0x0020 }
        goto L_0x0022;
    L_0x0020:
        r0 = "unknown";
    L_0x0022:
        r1 = new java.lang.StringBuilder;
        r2 = "{Response:  responseCode: ";
        r1.<init>(r2);
        r1.append(r0);
        r0 = ", graphObject: ";
        r1.append(r0);
        r0 = r5.graphObject;
        r1.append(r0);
        r0 = ", error: ";
        r1.append(r0);
        r0 = r5.error;
        r1.append(r0);
        r0 = "}";
        r1.append(r0);
        r0 = r1.toString();
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphResponse.toString():java.lang.String");
    }

    static List<GraphResponse> fromHttpConnection(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        Closeable closeable = null;
        List<GraphResponse> createResponsesFromStream;
        try {
            InputStream errorStream;
            if (httpURLConnection.getResponseCode() >= 400) {
                errorStream = httpURLConnection.getErrorStream();
            } else {
                errorStream = httpURLConnection.getInputStream();
            }
            closeable = errorStream;
            createResponsesFromStream = createResponsesFromStream(closeable, httpURLConnection, graphRequestBatch);
            return createResponsesFromStream;
        } catch (FacebookException e) {
            createResponsesFromStream = e;
            Logger.log(LoggingBehavior.REQUESTS, RESPONSE_LOG_TAG, "Response <Error>: %s", createResponsesFromStream);
            httpURLConnection = constructErrorResponses(graphRequestBatch, httpURLConnection, createResponsesFromStream);
            return httpURLConnection;
        } catch (Exception e2) {
            createResponsesFromStream = e2;
            Logger.log(LoggingBehavior.REQUESTS, RESPONSE_LOG_TAG, "Response <Error>: %s", createResponsesFromStream);
            httpURLConnection = constructErrorResponses(graphRequestBatch, httpURLConnection, new FacebookException((Throwable) createResponsesFromStream));
            return httpURLConnection;
        } finally {
            Utility.closeQuietly(closeable);
        }
    }

    static List<GraphResponse> createResponsesFromStream(InputStream inputStream, HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) throws FacebookException, JSONException, IOException {
        Logger.log(LoggingBehavior.INCLUDE_RAW_RESPONSES, RESPONSE_LOG_TAG, "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(Utility.readStreamToString(inputStream).length()), inputStream);
        return createResponsesFromString(Utility.readStreamToString(inputStream), httpURLConnection, graphRequestBatch);
    }

    static List<GraphResponse> createResponsesFromString(String str, HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) throws FacebookException, JSONException, IOException {
        Logger.log(LoggingBehavior.REQUESTS, RESPONSE_LOG_TAG, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", graphRequestBatch.getId(), Integer.valueOf(str.length()), createResponsesFromObject(httpURLConnection, graphRequestBatch, new JSONTokener(str).nextValue()));
        return createResponsesFromObject(httpURLConnection, graphRequestBatch, new JSONTokener(str).nextValue());
    }

    private static List<GraphResponse> createResponsesFromObject(HttpURLConnection httpURLConnection, List<GraphRequest> list, Object obj) throws FacebookException, JSONException {
        JSONArray jSONArray;
        GraphRequest graphRequest;
        int size = list.size();
        List<GraphResponse> arrayList = new ArrayList(size);
        int i = 0;
        if (size == 1) {
            GraphRequest graphRequest2 = (GraphRequest) list.get(0);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(BODY_KEY, obj);
                jSONObject.put(CODE_KEY, httpURLConnection != null ? httpURLConnection.getResponseCode() : Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
            } catch (Exception e) {
                arrayList.add(new GraphResponse(graphRequest2, httpURLConnection, new FacebookRequestError(httpURLConnection, e)));
            } catch (Exception e2) {
                arrayList.add(new GraphResponse(graphRequest2, httpURLConnection, new FacebookRequestError(httpURLConnection, e2)));
            }
            if (jSONArray instanceof JSONArray) {
                jSONArray = jSONArray;
                if (jSONArray.length() != size) {
                    while (i < jSONArray.length()) {
                        graphRequest = (GraphRequest) list.get(i);
                        try {
                            arrayList.add(createResponseFromObject(graphRequest, httpURLConnection, jSONArray.get(i), obj));
                        } catch (Exception e3) {
                            arrayList.add(new GraphResponse(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, e3)));
                        } catch (Exception e32) {
                            arrayList.add(new GraphResponse(graphRequest, httpURLConnection, new FacebookRequestError(httpURLConnection, e32)));
                        }
                        i++;
                    }
                    return arrayList;
                }
            }
            throw new FacebookException("Unexpected number of results");
        }
        jSONArray = obj;
        if (jSONArray instanceof JSONArray) {
            jSONArray = jSONArray;
            if (jSONArray.length() != size) {
                while (i < jSONArray.length()) {
                    graphRequest = (GraphRequest) list.get(i);
                    arrayList.add(createResponseFromObject(graphRequest, httpURLConnection, jSONArray.get(i), obj));
                    i++;
                }
                return arrayList;
            }
        }
        throw new FacebookException("Unexpected number of results");
    }

    private static GraphResponse createResponseFromObject(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object obj, Object obj2) throws JSONException {
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            obj2 = FacebookRequestError.checkResponseAndCreateError(jSONObject, obj2, httpURLConnection);
            if (obj2 != null) {
                if (obj2.getErrorCode() == 190 && Utility.isCurrentAccessToken(graphRequest.getAccessToken()) != null) {
                    AccessToken.setCurrentAccessToken(null);
                }
                return new GraphResponse(graphRequest, httpURLConnection, obj2);
            }
            obj = Utility.getStringPropertyAsJSON(jSONObject, BODY_KEY, NON_JSON_RESPONSE_PROPERTY);
            if ((obj instanceof JSONObject) != null) {
                return new GraphResponse(graphRequest, httpURLConnection, obj.toString(), (JSONObject) obj);
            }
            if ((obj instanceof JSONArray) != null) {
                return new GraphResponse(graphRequest, httpURLConnection, obj.toString(), (JSONArray) obj);
            }
            obj = JSONObject.NULL;
        }
        if (obj == JSONObject.NULL) {
            return new GraphResponse(graphRequest, httpURLConnection, obj.toString(), null);
        }
        httpURLConnection = new StringBuilder("Got unexpected object type in response, class: ");
        httpURLConnection.append(obj.getClass().getSimpleName());
        throw new FacebookException(httpURLConnection.toString());
    }

    static List<GraphResponse> constructErrorResponses(List<GraphRequest> list, HttpURLConnection httpURLConnection, FacebookException facebookException) {
        int size = list.size();
        List<GraphResponse> arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new GraphResponse((GraphRequest) list.get(i), httpURLConnection, new FacebookRequestError(httpURLConnection, (Exception) facebookException)));
        }
        return arrayList;
    }
}
